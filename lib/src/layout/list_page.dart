import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _ListViewPageContent(),
    );
  }
}

class _ListViewPageContent extends StatelessWidget {

  final datas = [
    {"name":"TC", "introduction":"Flutter cũng cung cấp cho chúng ta GridView tương tự như trong Android, và cách dựng GridView cũng tương tự như ListView"},
    {"name":"GK", "introduction":"truonggk@gmail.com"},
    {"name":"BK", "introduction":"truongcvbk@gmail.com"},
    {"name":"TCHK", "introduction":"Flutter cũng cung cấp cho chúng ta GridView tương tự như trong Android, và cách dựng GridView cũng tương tự như ListView"},
    {"name":"TCht", "introduction":"truongcvht@gmail.com"},
    {"name":"TCht", "introduction":"truongcvht@gmail.com"},
    {"name":"TCht", "introduction":"truongcvht@gmail.com"},
    {"name":"TCht", "introduction":"truongcvht@gmail.com"},
    {"name":"TCht", "introduction":"truongcvht@gmail.com"},
    {"name":"TCht", "introduction":"truongcvht@gmail.com"},
    {"name":"TCht", "introduction":"truongcvht@gmail.com"},
    {"name":"TCht", "introduction":"truongcvht@gmail.com"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo ListView", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.orange,
      ),
      body: _createListViewBuilder() 
    );
  }

  ListView _createListView() {
    return ListView(
      children: _createViewForListView(),
    );
  }

  ListView _createListViewBuilder() {
    return ListView.builder(
        itemCount: datas.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text("VC"),
            ),
            title: Text(datas[index]["name"]),
            subtitle: Text(datas[index]["introduction"], maxLines: 2, textAlign: TextAlign.justify,),
            onTap: (){
              print("on tap $index");
            },
          );
        },
      );
  }

  List<Widget> _createViewForListView() {
    List views = List<Widget>();
    for (int i = 1; i < 10; i++) {
      views.add(Container(
        margin: EdgeInsets.fromLTRB(8, i == 1 ? 8 : 4, 8, i == 9 ? 8 : 4),
        height: 100,
        width: double.infinity,
        color: Colors.green,
      ));
      views.add(Divider(height: 1,));
    }
    return views;
  }
}
