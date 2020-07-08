import 'package:flutter/material.dart';

import '../../provider/firebase_provider.dart';
import '../around_me/around_me_page.dart';

class Moms extends StatefulWidget {
  @override
  _MomsState createState() => _MomsState();
}

class _MomsState extends State<Moms> with SingleTickerProviderStateMixin {
  TabController _tabController;
  final FirebaseProvider _provider = FirebaseProvider();

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
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
        title: Text('Moms'),
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
                child: Text('Expert'),
              ),
            ]),
      ),
      body: TabBarView(controller: _tabController, children: [
        AroundMePage(
          future: _provider.fetchAllUsers(),
          appBar: false,
        ),
        AroundMePage(
          future: _provider.fetchExpertUsers(),
          appBar: false,
        ),
      ]),
    );
  }
}

// class AllOrExpertUsers extends StatelessWidget {
//   final Future<List<UserInfo>> future;

//   const AllOrExpertUsers({Key key, this.future}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<UserInfo>>(
//       future: future,
//       builder: ,
//     );
//   }
// }
