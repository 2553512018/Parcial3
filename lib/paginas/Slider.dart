import 'package:flutter/material.dart';
import 'package:parcial3/paginas/vistaAPI.dart';

class slider extends StatefulWidget {
  @override
  _sliderState createState() => _sliderState();
}

class _sliderState extends State<slider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/fondo.jpeg'), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(75, 100, 75, 100),
          child: Column(
            children: [
              const Text(
                'Datos',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Image.asset(
                      'assets/images/carnet.png',
                      width: 50,
                      height: 100,
                    ),
                    Text('2553512018',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        )),
                    Image.asset('assets/images/hombre.png',
                        width: 50, height: 100),
                    Text(
                      "Escobar Chavez Daniel Enrique",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                left: 150,
                right: 150,
                bottom: 200,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 48, 211, 240))),
                  child: const Text("Ver API"),
                  onPressed: () {
                    _showMenuapi(context);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showMenuapi(BuildContext context) {
    Navigator.of(context).pushNamed(
      "/vistaAPI",
      arguments: vistaAPI(),
    );
  }
}
