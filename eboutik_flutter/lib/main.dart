import 'package:eboutik_flutter/drawer.dart';
import 'package:flutter/material.dart';
import 'package:eboutik_flutter/appbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon App Flutter',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar().buildAppBar(context),
      drawer: MyDrawer(),
      body: Center(
        child: SafeArea(
          top: true,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 250,
                  width: double.infinity,
                  color: Colors.blue,
                  child: 
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Categorie 1", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 250,
                  width: double.infinity,
                  color: Colors.blue,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Categorie 2", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(children: [
                          
                          Container(
                            child: Image.asset("/images/image3.jpg"),
                            height: 190,
                            width: double.infinity,
                            
                          ),
                          Container(
                          child: 
                            Text("Produit-1", style: TextStyle(color: Colors.black),
                            
                          
                        )
                          ),
                        ],)
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(children: [
                          
                          Container(
                            child: Image.asset("/images/image2.jpg"),
                            height: 190,
                            width: double.infinity,
                            
                          ),
                          Container(
                          child: 
                            Text("Categorie 3 - Partie 2", style: TextStyle(color: Colors.black),
                            
                          
                        )
                          ),
                        ],)
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
