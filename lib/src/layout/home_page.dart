import 'package:flutter/material.dart';

// Use Expanded
class MylayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeLayout(),
    );
  }
}

class HomeLayout extends StatefulWidget {
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Layout"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Row(
            children: <Widget>[
              _containerView(Colors.red, "red"),
              SizedBox(
                width: 8,
              ),
              _containerView(Colors.amber, "amber"),
              SizedBox(
                width: 8,
              ),
              _containerView(Colors.green, "green"),
              SizedBox(
                width: 8,
              ),
              _containerView(Colors.grey, "grey"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: _createFlatButton(),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _containerView(Color c, String name) {
    return Expanded(
      child: Container(
        height: 50,
        width: 50,
        color: c,
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.email,
              color: Colors.white,
            ),
            Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 10),
            )
          ],
        )),
      ),
    );
  }

  Widget _createFlatButton() {
    return RaisedButton(
      onPressed: _pressRaiseButon,
      color: Colors.blue,
      child: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.email,
            color: Colors.white,
          ),
          Text(
            "click me",
            style: TextStyle(color: Colors.white, fontSize: 10),
          )
        ],
      )),
    );
  }

  void _pressRaiseButon() {
    print("clicked me");
  }

}
