import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  static String get tag => 'Login';

  @override
  _LoginState createState() => _LoginState();
}




final _UserId = new TextEditingController();
final _pass = new TextEditingController();

@override
void dispose() {
  _UserId.dispose();
  _pass.dispose();
}

class _LoginState extends State<Login> {

  String msg = 'a';
  String _myList ;
 _login() async {
  // final response = await http.post("http://uni-social.tk/api/v1/page/getById/{id}", body: {
  //   "email": _UserId.text,
  //   "password": _pass.text,
  // });

  final response = await http.get("http://uni-social.tk/api/v1/post/getById/7");
  print('response =>' + response.body);
  
// if (response.statusCode == 200) {
//       _myList = response.body;
//       if(_myList.contains('"name":"admin"'))
//       {

//                 Navigator.of(context).pushNamedAndRemoveUntil(
//                     '/Admin', (Route<dynamic> route) => false);
//                 _UserId.text = "";
//                 _pass.text = "";   
//       }
//       else if(_myList.contains('"name":"user"'))
//       {
//                 Navigator.of(context).pushNamedAndRemoveUntil(
//                     '/Student', (Route<dynamic> route) => false);
//                     _UserId.text = "";
//                 _pass.text = ""; 
//       }
     
//     } else {
//      setState(() {
//         msg = 'Error';
//       });
//     }

  //   var datauser = json.decode(response.body);
  // print(datauser['data']['name']);
  
}
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            fit: BoxFit.fill,
            image: new AssetImage("images/esn.jpg"),
          ),
          Container(

            padding: EdgeInsets.all(25.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  child: new Column(
                    children: <Widget>[
                      new TextField(
                        cursorColor: Colors.blueAccent,
                        style: TextStyle(fontSize: 20.0, color: Colors.blueAccent),
                        controller: _UserId,

                        decoration: InputDecoration(
                          labelText: 'Your ID',
                          prefixIcon: new Icon(Icons.email,color: Colors.blueAccent,),

                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  child: new Column(

                    children: <Widget>[
                      new TextField(
                        style: TextStyle(fontSize: 20.0, color: Colors.blueAccent),
                        controller: _pass,
                        obscureText: true,
                        cursorColor: Colors.blueAccent,
                        decoration: InputDecoration(
                          prefixIcon: new Icon(Icons.lock_open,color: Colors.blueAccent,),
                          labelText: 'Password',

                        ),
                      ),
                      new Padding(padding: EdgeInsets.all(10.0)),
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new RaisedButton(
                            padding: EdgeInsets.only(left: 80.0,right: 80.0,top: 10.0,bottom: 10.0),
                            splashColor: Colors.blueAccent,
                            color: Colors.grey.shade500,
                            textColor: Colors.white,
                            onPressed: (){
                              _login();
                              },
                            child: new Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          new Text(msg,style: TextStyle(
                            color: Colors.red,
                            fontSize: 25,
                          ),)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
