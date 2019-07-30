import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        FlatButton(child:Text('ListPage'), onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> ListPage()));
        },),
        FlatButton(child:Text('GridPage'), onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> GridPage()));
        },)
      ],),
    );
  }
}

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) {
        return ListTile(
          onTap: (){print(index);},
          title: Text('Username'),
          leading: (Icon(Icons.add_photo_alternate)),
        );
      },),
    );
  }
}

class GridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(25, (index){
          return Container(child: GridTile(child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.add_to_photos),
              Text('App'),
            ],
          )), color: Colors.blue,);
        },
        ),
    ),
    );
  }
}