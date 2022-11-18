import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/controladores/controlador_principal.dart';
import 'package:reto2/n1/menu.dart';
import 'package:reto2/n1/pa4_acercade.dart';
import 'package:reto2/n1/pag1_inicio.dart';
import 'package:reto2/n1/pag2_comprar.dart';
import 'package:reto2/n1/pag3_mis_productos.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Reto 2',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Shopping Max'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List paginas = [inicio(), comprar(), misproductos(), acercade()];

class _MyHomePageState extends State<MyHomePage> {
  controladorPrincipal Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: menu(),
      body: Obx(() => paginas[Control.posicionPagina]),
    );
  }
}
