import * as functions from 'firebase-functions';
import * as admin from 'firebase-admin';

admin.initializeApp();
exports.onConversationCreated = functions.firestore.document("Conversations/{conversationID}").onCreate((snapshot, context) => {
    let data = snapshot.data();
    let conversationID = context.params.conversationID;
    if (data) {
        let members = data.members;
        for (let index = 0; index < members.length; index++) {
            let currentUserID = members[index];
            let remainingUserIDs = members.filter((u: string) => u !== currentUserID);
            remainingUserIDs.forEach((m: string) => {
                return admin.firestore().collection("users").doc(m).collection("info").doc(m).get().then((_doc) => {
                    let userData = _doc.data();
                    if (userData) {
                        return admin.firestore().collection("users").doc(currentUserID).collection("Conversations").doc(m).create({
                            "conversationID": conversationID,
                            "image": userData.imageUrl,
                            "name": userData.userName,
                            "unseenCount": 0,
                        });
                    }
                    return null;
                }).catch(() => { return null; });
            });
        }
    }
    return null;
});

export const onConversationUpdated = functions.firestore.document("Conversations/{chatID}").onUpdate((change, context) => {
    let data = change?.after.data();
    if (data) {
        let members = data.members;
        let lastMessage = data.messages[data.messages.length - 1];
        for (let index = 0; index < members.length; index++) {
            let currentUserID = members[index];
            let remainingUserIDs = members.filter((u: string) => u !== currentUserID);
            remainingUserIDs.forEach((u: string) => {
                return admin.firestore().collection("users").doc(currentUserID).collection("Conversations").doc(u).update({
                    "lastMessage": lastMessage.message,
                    "timestamp": lastMessage.timestamp,
                    "type": lastMessage.type,
                    "unseenCount": admin.firestore.FieldValue.increment(1),

                });
            });
        }

    }
    return null;
});
