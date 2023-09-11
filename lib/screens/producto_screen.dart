import 'package:flutter/material.dart';

class ProductoScreen extends StatelessWidget {
  const ProductoScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text('Productos'),
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(title: Text('Camisa'), subtitle: Text('ropa')),
          ListTile(title: Text('Jeans'), subtitle: Text('ropa')),
          ListTile(title: Text('Sweter'), subtitle: Text('ropa')),
          ListTile(title: Text('Gorra'), subtitle: Text('ropa')),
          ListTile(title: Text('Reloj'), subtitle: Text('accesorias')),
          ListTile(title: Text('Collar'), subtitle: Text('accesorias')),
          ListTile(title: Text('Anillo'), subtitle: Text('accesorias')),
          ListTile(title: Text('Tenis'), subtitle: Text('zapatos')),
        ],
      ),
      );
  }
}