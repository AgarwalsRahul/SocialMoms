import 'package:flutter/material.dart';

import '../../provider/firebase_provider.dart';
import '../around_me/around_me_page.dart';
import '../chats/recent_chats.dart';
import '../forum/forum_page.dart';
import '../moms/moms.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController;
  int _page = 0;

  void navigationTapped(int page) {
    //Animating Page
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  void initState() {
    super.initState();
    pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          ForumPage(),
          RecentChats(),
          AroundMePage(
            future: FirebaseProvider().fetchAroundMeUsersInfo(),
            appBar: true,
          ),
          Container(
              // color: Colors.white,
              ),
          Moms(),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      // ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: navigationTapped,
          currentIndex: _page,
          elevation: 2.0,
          items: [
            BottomNavigationBarItem(
              title: Text('Forum'),
              icon: Icon(Icons.forum),
            ),
            BottomNavigationBarItem(
              title: Text('Chats'),
              icon: Icon(Icons.chat),
            ),
            BottomNavigationBarItem(
              title: Text('Around Me'),
              icon: Icon(Icons.near_me),
            ),
            BottomNavigationBarItem(
              title: Text('Notifications'),
              icon: Icon(Icons.notifications),
            ),
            BottomNavigationBarItem(
              title: Text('Moms'),
              icon: Icon(Icons.favorite),
            ),
          ]),
    );
  }
}
