import 'package:eboutik_flutter/listprodui.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
      
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('konekte'),
            onTap: () {
            
            },
          ),
          ListTile(
            title: Text('listPwodwi'),
            onTap: () {
              
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ListProd()));

            },
          ),
          ListTile(
            title: Text('dekonekte'),
            onTap: () {
              Navigator.pop(context); 
            },
          ),
        ],
      ),
      
    );
  }
}
