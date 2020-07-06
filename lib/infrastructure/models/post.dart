import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  String currentUserUid;
  //  String imgUrl;
  String id;
  String caption;
  FieldValue time;
  String postOwnerName;
  String postOwnerPhotoUrl;
  String type;

  Post(
      {this.currentUserUid,
      this.id,
      this.caption,
      this.type,
      this.time,
      this.postOwnerName,
      this.postOwnerPhotoUrl});

  Map toMap(Post post) {
    var data = Map<String, dynamic>();
    data['id'] = post.id;
    data['ownerUid'] = post.currentUserUid;
    data['caption'] = post.caption;
    data['type'] = post.type;
    data['time'] = post.time;
    data['postOwnerName'] = post.postOwnerName;
    data['postOwnerPhotoUrl'] = post.postOwnerPhotoUrl;
    return data;
  }

  Post.fromMap(Map<String, dynamic> mapData) {
    this.id = mapData['id'];
    this.currentUserUid = mapData['ownerUid'];
    this.caption = mapData['caption'];
    this.type = mapData['type'];
    this.time = FieldValue.serverTimestamp();
    this.postOwnerName = mapData['postOwnerName'];
    this.postOwnerPhotoUrl = mapData['postOwnerPhotoUrl'];
  }
}
