import 'package:flutter/material.dart';

class acercade extends StatefulWidget {
  const acercade({super.key});

  @override
  State<acercade> createState() => _acercadeState();
}

class _acercadeState extends State<acercade> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Asahel Lorenzo"),
            subtitle: Text("Nombres"),
          ),
          ListTile(
            leading: Icon(Icons.personal_injury),
            title: Text("Rois Arrieta"),
            subtitle: Text("Apellidos"),
          ),
          ListTile(
            leading: Icon(Icons.phone_android),
            title: Text("3225772069"),
            subtitle: Text("Celular"),
          ),
          ListTile(
            leading: Icon(Icons.email_outlined),
            title: Text("arois7777@gmail.com"),
            subtitle: Text("Email"),
          ),
        ],
      ),
    );
  }
}
