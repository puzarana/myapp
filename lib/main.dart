import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my CV app",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("My CV App"),
        ),
        body: SingleChildScrollView(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                child: Padding(
                  padding:  EdgeInsets.symmetric(
                    horizontal:30.0,
                    vertical:20.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                       backgroundImage: AssetImage("assets/woman.jpg"),
                        radius: 50.0,
                      ),
                      SizedBox(
                        height:13.0,
                      ),
                      Text("Puza Rana", style: TextStyle(
                        fontSize:23.0,
                      ),
                      ),
                      SizedBox(
                        height:5.0,
                      ),
                      Text("Student", style: TextStyle(
                        color: Colors.grey,
                        fontSize:20.0,
                        fontWeight: FontWeight.w600,
                      ),),
                      SizedBox(
                        height:8.0,
                      ),
                      Text("Hello! I am Puza Rana.I am student of Butwal Multiple Campus.And I currently learning flutter.And I,m going to make CV app for people", 
                      style: TextStyle(
                       fontSize:15.0,
                       fontFamily: "Cursive",
                       color: Colors.blue,
                      ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left:15.0,
                   top:8.0,
                   bottom:8.0,
                   ),
                child: Text("Social Links",
                 style: TextStyle(
                 fontSize: 20.0,
                ),
                ),
              ),
              Card(
                       elevation: 3.0,
                            child: Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        print("I am clicked");
                      },
                      icon: Icon(FontAwesomeIcons.facebook),
                      color: Colors.blue,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(FontAwesomeIcons.twitter),
                      color: Colors.blueGrey,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(FontAwesomeIcons.instagram),
                      color: Colors.red,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(FontAwesomeIcons.linkedin),
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left:15.0,
                   top:8.0,
                   bottom:8.0,
                   ),
                child: Text("Skills",
                 style: TextStyle(
                 fontSize: 20.0,
                ),
                ),
              ),
             Card(
                   elevation: 3.0,
                   child: ListTile(
                     leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://codeit.com.np/storage/2019/11/web.jpg"),
                      radius: 25.0,
                     ),
                  title: Text("Web development"),
                  subtitle: Text("HTML, CSS, JAVASCRIPT"),
                ),
              ),
              Card(
                   elevation: 3.0,
                   child: ListTile(
                     leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://codeit.com.np/storage/2019/11/web.jpg"),
                      radius: 25.0,
                     ),
                  title: Text("App development"),
                  subtitle: Text("DART AND FLUTTER"),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}