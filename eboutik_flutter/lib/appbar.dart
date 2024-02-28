import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class MyAppBar {
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Container(
        color: Colors.white,
        padding: EdgeInsets.all(25),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "PEYEM",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
            badges.Badge(
              badgeStyle: badges.BadgeStyle(
                badgeColor: Colors.red,
              ),
              badgeContent: Text(
                "0",
                style: TextStyle(color: Colors.white),
              ),
              child: InkWell(
                onTap: () {
                  // Ajoutez ici la logique pour gérer le panier
                },
                child: Icon(
                  Icons.shopping_basket_outlined,
                  size: 32,
                  color: Color(0xFF4C53A5),
                ),
              ),
            ),
          ],
        ),
      ),
      // Ajoutez ici d'autres propriétés de l'appBar selon vos besoins
    );
  }
}
