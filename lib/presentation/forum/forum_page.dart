import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

import 'package:social_media/infrastructure/models/post.dart';
import 'package:social_media/presentation/core/router/router.gr.dart';
import 'package:social_media/presentation/forum/comment_screen.dart';
import 'package:social_media/presentation/forum/post_page.dart';
import 'package:social_media/provider/firebase_provider.dart';

import 'girl_talk_forum.dart';
import 'relationship_forum.dart';

class ForumPage extends StatefulWidget {
  @override
  _ForumPageState createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  final FirebaseProvider _provider = FirebaseProvider();

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forum'),
        centerTitle: true,
        bottom: TabBar(
            indicatorWeight: 3.0,
            indicatorColor: Theme.of(context).accentColor,
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.black)),
            controller: _tabController,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(
                child: Text('All'),
              ),
              Tab(
                child: Text('Girl Talk'),
              ),
              Tab(
                //
                text: 'Relationship',
              )
            ]),
      ),
      // bottomSheet: PostPage(),
      // bottomSheet: PostPage(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        isExtended: true,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => PostPage(),
            backgroundColor: Colors.black,
            elevation: 2.0,
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          );
        },
        tooltip: 'New Post',
        label: Text('New Post'),
        icon: Icon(Icons.add),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          AllForums(
            provider: _provider,
            posts: _provider.retrievePosts(),
          ),
          AllForums(
            provider: _provider,
            posts: _provider.retrieveGirlTalkPosts(),
          ),
          AllForums(
            provider: _provider,
            posts: _provider.retrieveRelationshipPosts(),
          ),
        ],
      ),
    );
  }
}

class AllForums extends StatefulWidget {
  final FirebaseProvider provider;
  final Future<List<Post>> posts;

  AllForums({
    Key key,
    this.provider,
    this.posts,
  }) : super(key: key);

  @override
  _AllForumsState createState() => _AllForumsState();
}

class _AllForumsState extends State<AllForums> {
  StreamController<List<Post>> _controller = BehaviorSubject();

  @override
  void initState() {
    if (!_controller.isClosed || !_controller.isPaused) {
      Future.delayed(Duration.zero).then((_) async {
        return _controller.add(await widget.posts);
      });
    }
    super.initState();
  }

  // @override
  // void dispose() {
  //   _controller.close();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Post>>(
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          print(snapshot.error.toString());
          return Flushbar(
            message: snapshot.error.toString(),
            duration: Duration(seconds: 3),
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.warning,
              size: 28.0,
              color: Colors.red[300],
            ),
            leftBarIndicatorColor: Colors.red[300],
          )..show(context);
        } else {
          if (snapshot.data.length <= 0) {
            return Center(
              child: Text(
                'No posts yet !',
                style: TextStyle(fontSize: 20),
              ),
            );
          }
          return ListView.builder(
            itemBuilder: (context, i) {
              return Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: NetworkImage(snapshot
                                      .data[i].postOwnerPhotoUrl ==
                                  ''
                              ? 'https://cdn0.iconfinder.com/data/icons/occupation-002/64/programmer-programming-occupation-avatar-512.png'
                              : snapshot.data[i].postOwnerPhotoUrl),
                          radius: 25,
                        ),
                        Text(snapshot.data[i].postOwnerName),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(snapshot.data[i].caption),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlatButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border),
                            label: Text('Likes')),
                        FlatButton.icon(
                            onPressed: () async {
                              final ref = Firestore.instance
                                  .collection('users')
                                  .document(snapshot.data[i].currentUserUid)
                                  .collection('posts')
                                  .document(snapshot.data[i].id);
                              final userInfo =
                                  await widget.provider.getUserInfo();

                              ExtendedNavigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return CommentsScreen(
                                  documentReference: ref,
                                  user: userInfo,
                                );
                              }));
                            },
                            icon: Icon(Icons.mode_comment),
                            label: Text('Comment')),
                      ],
                    )
                  ],
                ),
              );
            },
            itemCount: snapshot.data.length,
          );
        }
      },
      stream: _controller.stream,
    );
  }
}
