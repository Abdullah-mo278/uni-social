import 'package:flutter/material.dart';
import './drawer.dart' as D;
import './year.dart';
import './section.dart';

class Admin extends StatefulWidget {
  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> with SingleTickerProviderStateMixin {
  TabController tabController;

  List<Widget> myfunctionlist(var color) {
    List<Widget> listcard = new List<Widget>();

    for (int i = 0; i <= 10; i++) {
      listcard.add(new Card(
          child: Container(
        height: 170.0,
        color: color,
      )));
    }
    return listcard;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
          actions: <Widget>[
            InkWell(
              child: Icon(
                Icons.notifications,
                color: Colors.black,
                size: 25.0,
              ),
              onTap: () => {},
            ),
          ],
          leading: InkWell(
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 25.0,
            ),
            onTap: () => _scaffoldKey.currentState.openDrawer(),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "Admin Feeds",
            style: TextStyle(color: Colors.black, fontSize: 15.0),
          )),

      drawer: D.Draw(),

      //------------------------ body ------------------------

      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          Year(),
          Section(),
        ],
      ),

      //------------------------ floatingActionButton ------------------------
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.create,
          size: 30.0,
        ),
        backgroundColor: Colors.black12,
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.black,
          unselectedLabelColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 1,
          labelColor: Colors.grey,
          tabs: <Widget>[
            Icon(
              Icons.home,
              size: 26.0,
            ),
            Icon(
              Icons.person,
              size: 26.0,
            ),
          ],
        ),
      ),
    );
  }
}
