import 'package:flutter/material.dart';

class Napp extends StatefulWidget {
  @override
  _NappState createState() => _NappState();
}

class _NappState extends State<Napp> {
  bool StateLike = false;
  Color ColorLike = Colors.black26;

  setLikeColor() {
    if (StateLike)
      setState(() => ColorLike = Colors.black26);
    else
      setState(() => ColorLike = Colors.blueAccent);
    setState(() => StateLike = !StateLike);
  }

  List<Widget> myfunctionlist() {
    List<Widget> listcard = new List<Widget>();
    for (int i = 0; i <= 10; i++) {
      listcard.add(new Card(
          margin: EdgeInsets.only(bottom: 10.0,left: 8.0,right: 8.0),
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                //------------------------- top design -------------------------

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      width: 30.0,
                      margin:
                      EdgeInsets.only(left: 10.0, top: 10.0, right: 20.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("images/avatar.jpg"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                              i % 2 == 0
                                  ? "Elsayed Mahmoud"
                                  : "Abdullah Mohamed",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              )),
                          Container(
                            margin: EdgeInsets.only(top: 2.0),
                            child: Text("Fourth Year CS : Section 2",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.pinkAccent.shade100,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                //--------------------- content post ---------------------

                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(20.0),
                        child: Text(
                          "Hello Students , there is an important ads !\n Hello Students , there is an important ads !",
                          textAlign: TextAlign.right,
                          style:
                          TextStyle(fontSize: 15.0, color: Colors.black87),
                        ),
                      ),
                      new Image(
                        image: AssetImage("images/es.jpg"),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.white10,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new IconButton(
                              onPressed: setLikeColor,
                              icon:
                              new ImageIcon(AssetImage("images/like.png"),color:ColorLike ,),
                              // color: ColorLike,
                              iconSize: 23.0,
                            ),
                            new Text(
                              "10K",
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new IconButton(
                              onPressed: () {},
                              icon: new ImageIcon(
                                  AssetImage("images/comment.png")),
                              color: Colors.cyanAccent.shade400,
                              iconSize: 23.0,
                            ),
                            new Text(
                              "575",
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 5.0),
                              child: new Text(
                                "Just Now",
                                style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.grey.shade700),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )));
    }
    return listcard;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: myfunctionlist(),
      ),
    );
  }
}
