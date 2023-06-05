import 'package:flutter/material.dart';

class Pantalla1 extends StatelessWidget {
  const Pantalla1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Agregando Bordes APP Moreno',
                style: TextStyle(color: Colors.black, fontSize: 17)),
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.purple),
            centerTitle: true,
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.person, color: Colors.grey),
                ),
                Tab(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.pets,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Text("Linda Ximena Moreno Salgado",
                    style: TextStyle(fontSize: 20)),
              ),
              Center(
                child: Text(
                    "Me gusta el KPOP, la ramen y las tortugas ninjas :D",
                    style: TextStyle(fontSize: 20)),
              ),
              Center(
                child: Text("Tengo una perrita llamada Cherry🍒",
                    style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ));
  }
}
