import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../../domain/info/info.dart';
import 'profile_page.dart';

class AroundMePage extends StatelessWidget {
  final Future<List<UserInfo>> future;
  final bool appBar;

  AroundMePage({
    Key key,
    this.future,
    this.appBar,
  }) : super(key: key);

  final appbar = AppBar(
    centerTitle: true,
    title: Text('Around Me'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar ? appbar : null,
      body: RefreshIndicator(
        onRefresh: () => future,
        child: FutureBuilder<List<UserInfo>>(
            future: future,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Flushbar(
                  message: 'Something went wrong ❗',
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
                if (snapshot.data.length <= 0 || !snapshot.hasData) {
                  return Center(
                    child: Text(
                      'No users yet !',
                      style: TextStyle(fontSize: 20),
                    ),
                  );
                }
                return GridView.builder(
                  padding: EdgeInsets.all(10.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, i) {
                    return InkWell(
                      onTap: () => ExtendedNavigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ProfilePage(userInfo: snapshot.data[i]);
                      })),
                      child: Card(
                        elevation: 2.0,
                        shadowColor: Colors.amber,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: GridTile(
                            child: FadeInImage(
                              placeholder:
                                  AssetImage('assets/images/placeholder.png'),
                              image: NetworkImage(snapshot.data[i].imageUrl ==
                                      ''
                                  ? 'https://cdn0.iconfinder.com/data/icons/occupation-002/64/programmer-programming-occupation-avatar-512.png'
                                  : snapshot.data[i].imageUrl),
                              fit: BoxFit.cover,
                            ),
                            footer: GridTileBar(
                              backgroundColor: Theme.of(context).accentColor,
                              title: Text(
                                snapshot.data[i].userName.getOrCrash(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: snapshot.data.length,
                );
              }
            }),
      ),
    );
  }
}
