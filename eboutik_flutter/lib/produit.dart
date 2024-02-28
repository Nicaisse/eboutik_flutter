import 'package:eboutik_flutter/listprodui.dart';
import 'package:flutter/material.dart';

class details extends StatelessWidget {
  final Product product;

  details({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Image.asset(product.imageUrl),
                height: 300,
                width: double.infinity,
              ),
              SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  product.description,
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              // Ajoutez d'autres informations sur le produit selon vos besoins
            ],
          ),
        ),
      ),
    );
  }
}
