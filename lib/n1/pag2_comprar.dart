import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/controladores/controlador_principal.dart';

class comprar extends StatefulWidget {
  const comprar({super.key});

  @override
  State<comprar> createState() => _comprarState();
}

class _comprarState extends State<comprar> {
  controladorPrincipal Control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(() => ListView.builder(
            itemCount: Control.pro.length,
            itemBuilder: (BuildContext context, index) {
              return ListTile(
                leading: Image(image: NetworkImage(Control.pro[index].imagen)),
                title: Text(Control.pro[index].nombre +
                    " / " +
                    Control.pro[index].precio.toString() +
                    " Pesos"),
                trailing: Text(
                  Control.pro[index].cantidad.toString(),
                  style: TextStyle(fontSize: 20.0),
                ),
                subtitle: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          int nuevaCantidad = Control.pro[index].cantidad + 1;
                          Control.cambiarCantidad(index, nuevaCantidad);
                          Control.pro.refresh();
                        },
                        icon: Icon(Icons.arrow_circle_up_rounded)),
                    VerticalDivider(),
                    IconButton(
                        onPressed: () {
                          int nuevaCantidad = Control.pro[index].cantidad - 1;
                          if (nuevaCantidad < 0) {
                            nuevaCantidad = 0;
                          }
                          Control.cambiarCantidad(index, nuevaCantidad);
                          Control.pro.refresh();
                        },
                        icon: Icon(Icons.arrow_circle_down_rounded))
                  ],
                ),
              );
            },
          )),
    );
  }
}
