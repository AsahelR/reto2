import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/controladores/controlador_principal.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class misproductos extends StatefulWidget {
  const misproductos({super.key});

  @override
  State<misproductos> createState() => _misproductosState();
}

class _misproductosState extends State<misproductos> {
  controladorPrincipal Control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: Control.pro.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Control.pro[index].cantidad == 0
                        ? Text("")
                        : ListTile(
                            leading: Image(
                                image: NetworkImage(Control.pro[index].imagen)),
                            title: Text(Control.pro[index].nombre),
                            subtitle: Text("Precio: " +
                                Control.pro[index].precio.toString() +
                                " / Cantidad: " +
                                Control.pro[index].cantidad.toString()),
                            trailing: Text((Control.pro[index].cantidad *
                                    Control.pro[index].precio)
                                .toString()),
                          );
                  },
                ),
              ),
              Divider(),
              Text(
                "Total a pagar: " + Control.calcularTotal().toString(),
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              Divider(),
              ElevatedButton.icon(
                  onPressed: () {
                    Alert(
                        type: AlertType.success,
                        context: context,
                        title: "GRACIAS :D",
                        desc: "Su compra fue realizada con exito",
                        buttons: [
                          DialogButton(
                              child: Text("CERRAR"),
                              onPressed: () {
                                Control.limpiarTodo();
                                Navigator.pop(context);
                                Control.cambiarPosicion(0);
                              })
                        ]).show();
                  },
                  icon: Icon(Icons.add_shopping_cart),
                  label: Text("Comprar"))
            ],
          ),
        ));
  }
}
