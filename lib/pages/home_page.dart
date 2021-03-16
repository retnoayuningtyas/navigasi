import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigasidanrute/models/item.dart';

import 'item_page.dart';

class HomePage extends StatelessWidget{
  final List<Item>items=[
    Item(name: 'Sugar', price: 5000, jumlah: 5),
    Item(name: 'Salt' , price: 2000, jumlah: 4),
    Item(name: 'Papper', price: 3000, jumlah: 3),
    Item(name: 'Tomat', price: 4000, jumlah: 2),
    
  ];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title : 'Shopping',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
        title: Text("Shopping"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index){
            final item = items[index];
            return InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> ItemPage(tempItem: item)),
                  );
              },
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          item.toString(),
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          item.jumlah.toString(),
                        ),
                          )
                        ),
                        )
                      ),     
                      ]
                  )
                ),
              )
            );
          }
        ),
      ),
      )
    );
  }
}