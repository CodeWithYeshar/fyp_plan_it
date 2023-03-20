import "package:flutter/material.dart";
import 'authenticate.dart';
import 'login_customer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Container(
            color: Color.fromRGBO(121, 131, 198, 1),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.24,
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromRGBO(238, 240, 248, 1),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 10.0,
                        left: 20.0,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Color.fromRGBO(121, 131, 198, 1),
                          child: Icon(
                            Icons.person,
                            size: 60,
                          ),
                        ),
                      ),
                      Positioned(
                        child: Text('example@example.com'),
                        top: 150,
                        left: 20,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.pageview,
                        color: Color.fromRGBO(238, 240, 248, 1),
                        size: 30,
                      ),
                      Text(
                        ' Go to sample page',
                        style:
                            TextStyle(color: Color.fromRGBO(238, 240, 248, 1)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.info,
                        color: Color.fromRGBO(238, 240, 248, 1),
                        size: 30,
                      ),
                      Text(
                        ' About',
                        style:
                            TextStyle(color: Color.fromRGBO(238, 240, 248, 1)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.settings_applications,
                        color: Color.fromRGBO(238, 240, 248, 1),
                        size: 30,
                      ),
                      Text(
                        ' Settings',
                        style:
                            TextStyle(color: Color.fromRGBO(238, 240, 248, 1)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.settings_applications,
                        color: Color.fromRGBO(238, 240, 248, 1),
                        size: 30,
                      ),
                      new GestureDetector(
                        onTap: () {
                          Auth().signOut();
                        },
                        child: new Text("Logout"),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Color.fromRGBO(121, 131, 198, 1),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text('Customer Name'),
          backgroundColor: Color.fromRGBO(121, 131, 198, 1),
        ),
        body: Center(),
      ),
    );
  }
}
