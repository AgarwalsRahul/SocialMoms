import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:social_media/domain/info/info.dart';
import 'package:social_media/provider/firebase_provider.dart';

class AroundMePage extends StatelessWidget {
  final FirebaseProvider provider;

  const AroundMePage({Key key, this.provider}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Around Me'),
      ),
      body: StreamBuilder<List<UserInfo>>(
          stream: provider.fetchAroundMeUsersInfo(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
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
              if (snapshot.data.length <= 0 || snapshot.data == null) {
                return Center(
                  child: Text(
                    'No users yet !',
                    style: TextStyle(fontSize: 20),
                  ),
                );
              }
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, i) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: GridTile(
                      child: GestureDetector(
                        onTap: () {},
                        child: FadeInImage(
                          placeholder:
                              AssetImage('assets/images/placeholder.png'),
                          image: NetworkImage(snapshot.data[i].imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                      footer: GridTileBar(
                        backgroundColor: Theme.of(context).accentColor,
                        title: Text(
                          snapshot.data[i].userName.getOrCrash(),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: snapshot.data.length,
              );
            }
          }),
    );
  }
}
