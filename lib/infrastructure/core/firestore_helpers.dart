import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:social_media/domain/auth/auth_facade.dart';
import 'package:social_media/domain/core/errors.dart';

import '../../injection.dart';

extension FirestoreX on Firestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<AuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .collection('users')
        .document(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get infoCollection => collection('info');
  CollectionReference get postCollection => collection('posts');
}
