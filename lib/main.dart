import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Imagen cargada desde una URL
              Image.network(
                'https://static1.cbrimages.com/wordpress/wp-content/uploads/2023/08/blue-lock-nagi.jpg?q=50&fit=crop&w=1140&h=&dpr=1.5',
                height: 250,
                fit: BoxFit.cover,
              ),
              // Contenido textual
              const Padding  (
                padding:  EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Título y valoración
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Expanded(
                          child: Text(
                            'Yoichi Isagi',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromRGBO(30, 9, 220, 1),
                        ),
                        Text(
                          '50',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                     Text(
                      'Yoichi Isagi',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    ),
                     SizedBox(height: 16.0),
                    // Descripción
                     Text(
                      'Blue Lock es una serie de manga japonesa creada por Muneyuki Kaneshiro e ilustrada por Yusuke Nomura. La historia gira en torno a un grupo de jóvenes futbolistas que son seleccionados para participar en un innovador y estricto programa de entrenamiento en Japón, diseñado para crear al delantero más letal del mundo. Este programa busca transformar a los jugadores en auténticos depredadores en el campo, abordando temas como la competencia, la superación personal y la presión del rendimiento',
                      style: TextStyle(fontSize: 16.0),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 16.0),
                    // Botones de acción
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ActionButton(icon: Icons.call, label: 'CALL'),
                        ActionButton(icon: Icons.near_me, label: 'ROUTE'),
                        ActionButton(icon: Icons.share, label: 'SHARE'),
                      ],
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

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const ActionButton({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: const Color.fromARGB(255, 195, 49, 9), size: 30),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 14.0, color: Color.fromARGB(255, 184, 58, 8)),
        ),
      ],
    );
  }
}