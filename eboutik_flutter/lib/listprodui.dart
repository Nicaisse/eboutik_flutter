import 'package:eboutik_flutter/appbar.dart';
import 'package:flutter/material.dart';
import 'produit.dart'; // Assurez-vous d'importer la classe DetailsPage

class Product {
  final String name;
  final String description;
  final String imageUrl;

  Product({required this.name, required this.description, required this.imageUrl});
}

class ListProd extends StatefulWidget {
  const ListProd({Key? key}) : super(key: key);

  @override
  State<ListProd> createState() => _ListProdState();
}

class _ListProdState extends State<ListProd> {
  List<Product> products = [
    Product(name: 'produit_no1', description: 'Description du produit 1', imageUrl: '/images/image3.jpg'),
    Product(name: 'produit_no2', description: 'Description du produit 1', imageUrl: '/images/image4.jpg'),
    Product(name: 'produit_no3', description: 'Description du produit 1', imageUrl: '/images/image5.jfif'),
    Product(name: 'produit_no4', description: 'Description du produit 1', imageUrl: '/images/image6.jpg'),
    Product(name: 'produit_no5', description: 'Description du produit 1', imageUrl: '/images/image7.jpg'),
    Product(name: 'produit_no7', description: 'Description du produit 1', imageUrl: '/images/image9.webp'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar().buildAppBar(context),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 colonnes
          crossAxisSpacing: 8.0, // Espacement horizontal entre les colonnes
          mainAxisSpacing: 8.0, // Espacement vertical entre les lignes
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Naviguer vers la page de détails du produit
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => details(product: products[index])),
              );
            },
            child: Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                child: Image.asset(products[index].imageUrl),
                height: 200,
                width: double.infinity,
              ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(products[index].name),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(products[index].description),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
