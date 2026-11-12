import 'package:flutter/material.dart';
import 'models/produit.dart';

class DetailsProduit extends StatelessWidget {
  final Produit produit;

  const DetailsProduit({super.key, required this.produit});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(produit.nom)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nom : ${produit.nom}',
                style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 10),
            Text('Description : ${produit.description}',
                style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Text('Prix : ${produit.prix} \$',
                style: const TextStyle(fontSize: 18, color: Colors.green)),
          ],
        ),
      ),
    );
  }
}