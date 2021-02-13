import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Widget',
    home: Scaffold(
      appBar: AppBar(
        title: Text("Long List"),
      ),
      body: getListView(),
    ),
  ));
}

List <String> getListElements(){
  var items = List<String>.generate(100, (Counter) => "Item $Counter");
  return items;
}

Widget getListView() {
  var listItems = getListElements();

  var listView = ListView.builder(itemBuilder: (context, index){
    return ListTile(
      leading: Icon(Icons.arrow_right),
      title: Text(listItems[index]),
      onTap: () {
        debugPrint('${listItems[index]} Was Tapped');
      },
    );
  });
  return listView;
}