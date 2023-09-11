import 'package:flutter/material.dart';
import '../listas/clientes_lista.dart';

class ClienteScreen extends StatelessWidget {
  const ClienteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clientes'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person, size: 50),
            title: Text(clientes[index][0]),
            subtitle: Text(clientes[index][1]),
            trailing: const Icon(Icons.phone, size: 30, color: Colors.green),
            onTap: () {
              print(
                  "Marcando a ${clientes[index][0]}... bring bring, bring bring...");
            },
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: clientes.length,
      ),
    );
  }
}
