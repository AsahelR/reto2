import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/controladores/controlador_principal.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  controladorPrincipal Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                child: UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://e7.pngegg.com/pngimages/513/311/png-clipart-silhouette-male-silhouette-animals-head-thumbnail.png"),
                    ),
                    accountName: Text("Asahel Rois"),
                    accountEmail: Text("arois7777@gmail.com"))),
            Divider(),
            Expanded(
                child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Inicio"),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.pop(context);
                    Control.cambiarPosicion(0);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.monetization_on_sharp),
                  title: Text("Comprar"),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.pop(context);
                    Control.cambiarPosicion(1);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopify),
                  title: Text("Mis productos"),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.pop(context);
                    Control.cambiarPosicion(2);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Acerca de..."),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.pop(context);
                    Control.cambiarPosicion(3);
                  },
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
