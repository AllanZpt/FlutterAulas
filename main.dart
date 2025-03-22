import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Teste',
      debugShowCheckedModeBanner: false,
      home: iniciarProjeto(),
    );
  }

  Widget iniciarProjeto() {
    return Scaffold(
      appBar: AppBar(title: Text('TAUSTE'), backgroundColor: Colors.blue),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 80,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.blueAccent),
                child: Text(
                  'CATEGORIAS',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(title: const Text('Açougue'), onTap: () {}),
            ListTile(title: const Text('Bebidas'), onTap: () {}),
            ListTile(title: const Text('Macarrão'), onTap: () {}),
          ],
        ),
      ),
    );
  }
}
