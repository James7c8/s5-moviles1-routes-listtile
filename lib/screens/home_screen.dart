import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // ButtonStyle no es constante así que no se puede usar en un StatelessWidget.
  // final ButtonStyle customButton = const ButtonStyle(
  //   minimumSize: MaterialStateProperty.all(Size(200, 50)),
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('La Tienda'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bienvenido a la Tienda',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 100), // 1.
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'productoscreen'); // 2.
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(400, 60)),
              ),
              child: const Text('Productos'),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'clientescreen');
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(400, 60)),
              ),
              child: const Text('Clientes'),
            ),
            const SizedBox(height: 60),
            const Icon(
              Icons.shopping_cart_outlined,
              size: 100,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

/*
1. SizeBox() es un widget que sirve para darle un tamaño a un widget, pero en
este caso da espacio entre los botones.

2. Navigator maneja los routes en Flutter. Registra la historia de los screens y
permite navegar entre ellos. Funciona como un stack de screens. Cuando uno va a
un nuevo screen, se lo pone encima del stack, y cuando uno vuelve, se lo saca.
  
  push() -> pone un screen encima del stack. Exige que se le pase un context. Se
            puede crear un nuevo screen de una vez dentro de la función.
  pushNamed() -> pone un screen encima del stack. Exige el nombre del screen.
  pop () -> saca un screen del stack.
  pushReplacement() -> pone un screen encima del stack y saca el anterior.
  pushAndRemoveUntil() -> pone un screen encima del stack y saca todos los
                          screens que estén por encima del screen que se puso.
                          Útil para prevenir que el usuario vuelva a un screen.
*/