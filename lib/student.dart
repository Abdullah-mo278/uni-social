import 'package:flutter/material.dart';
import './post.dart';

class Student extends StatefulWidget {
  @override
  _StudentState createState() => _StudentState();
}

class _StudentState extends State<Student> with SingleTickerProviderStateMixin {
  //------------------------ functions ------------------------
  //------------------------ functions ------------------------
  //------------------------ functions ------------------------
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  //------------------------ start design ------------------------
  //------------------------ start design ------------------------
  //------------------------ start design ------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //------------------------ AppBar ------------------------
      //------------------------ AppBar ------------------------
      //------------------------ AppBar ------------------------

      key: _scaffoldKey,

      appBar: AppBar(
        title: Text(
          "Students Feed",
          style: TextStyle(color: Colors.black, fontSize: 15.0),
        ),
        centerTitle: true,
        leading: InkWell(
          child: Icon(
            Icons.menu,
            color: Colors.black,
            size: 25.0,
          ),
          onTap: () => _scaffoldKey.currentState.openDrawer(),
        ),
        backgroundColor: Colors.white,
      ),

      //------------------------ drawer ------------------------
      //------------------------ drawer ------------------------
      //------------------------ drawer ------------------------

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            new DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50.0),
                      bottomLeft: Radius.circular(50.0),
                      topLeft: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0),
                    )),
                child: Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(right: 100.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 85.0,
                          height: 85.0,
                          margin: EdgeInsets.only(bottom: 10.0),
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("images/avatar.jpg"))),
                        ),
                        new Text("Student",
                            style:
                            TextStyle(fontSize: 16.0, letterSpacing: 1.0)),
                        new Text(
                          "Student@gmail.com",
                          style: TextStyle(fontSize: 12.0),
                        )
                      ],
                    ))),
            ListTile(
              onTap: () {},
              leading: new Icon(Icons.settings),
              title: Text("Settings", style: TextStyle(fontSize: 15.0)),
              subtitle: Text("informatoin about the title"),
            ),
            ListTile(
                onTap: () {},
                leading: new Icon(Icons.help),
                title: Text("help", style: TextStyle(fontSize: 15.0)),
                subtitle: Text("informatoin about the title")),
            ListTile(
                onTap: () {},
                leading: new Icon(Icons.bookmark),
                title: Text("Bookmark", style: TextStyle(fontSize: 15.0)),
                subtitle: Text("informatoin about the title")),
            ListTile(
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      '/Login', (Route<dynamic> route) => false);
                },
                leading: new Icon(Icons.exit_to_app),
                title: Text("Sign Out", style: TextStyle(fontSize: 15.0)),
                subtitle: Text("informatoin about the title")),
          ],
        ),
      ),

      //------------------------ body ------------------------
      //------------------------ body ------------------------
      //------------------------ body ------------------------

      body: Container(
        child: TabBarView(
          controller: tabController,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 2.0, right: 2.0),
              color: Colors.white30,
              child: ListView(
                children: <Widget>[Napp()],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 2.0, right: 2.0),
              color: Colors.white30,
              child: ListView(
                children: <Widget>[Napp()],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 2.0, right: 2.0),
              color: Colors.white30,
              child: ListView(
                children: <Widget>[Napp()],
              ),
            ),
          ],
        ),
      ),

      //------------------------ bottomNavigationBar ------------------------
      //------------------------ bottomNavigationBar ------------------------
      //------------------------ bottomNavigationBar ------------------------

      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.lightBlueAccent,
          unselectedLabelColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 0.000000001,
          labelColor: Colors.lightBlue,
          tabs: <Widget>[
            Icon(
              Icons.home,
              size: 26.0,
            ),
            Icon(
              Icons.low_priority,
              size: 26.0,
            ),
            Icon(
              Icons.notifications,
              size: 26.0,
            ),
          ],
        ),
      ),

      //------------------------ floatingActionButton ------------------------
      //------------------------ floatingActionButton ------------------------
      //------------------------ floatingActionButton ------------------------

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.create,
          size: 30.0,
        ),
        backgroundColor: Colors.black12,
      ),
    );
  }
}
