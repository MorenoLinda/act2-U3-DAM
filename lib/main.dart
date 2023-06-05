import 'package:flutter/material.dart';
import 'package:moreno/sobremi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Veterinaria',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
        title: toString(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregando Bordes APP Moreno',
            style: TextStyle(color: Colors.black, fontSize: 17)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.purple),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Text(
                        "Linda Moreno",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text("Sobre Mi"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Pantalla1()));
              },
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/512/1507/1507155.png',
                width: 170,
                height: 170,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 130,
            width: double.infinity,
            //color: Colors.purple,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.purple,
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(25.0)),
            child: const Text("Linda Ximena Moreno Salgado",
                style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
          ),
          Container(
            decoration: const BoxDecoration(
                border: Border(
              bottom: BorderSide(width: 8, color: Colors.purple),
            )),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            child: Image.asset(
              "assets/yo.jpg",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: const BoxDecoration(
                border: Border(
              top: BorderSide(width: 8, color: Colors.purple),
            )),
          ),
          Container(
            height: 90,
            width: double.infinity,
            //color: Colors.purple,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.purple, width: 5),
                borderRadius: BorderRadius.circular(25.0)),
            child: const Text("6-J Programación",
                style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}
