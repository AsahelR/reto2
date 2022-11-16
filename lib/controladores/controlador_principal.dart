import 'package:get/get.dart';
import 'package:reto2/class/productos.dart';

class controladorPrincipal extends GetxController {
  final _posicionPagina = 0.obs;
  final pro = <productos>[].obs;

  @override
  void onInit() {
    pro.add(productos(1, "Tenis",
        "https://www.pngmart.com/files/7/Sneakers-PNG-Picture.png", 0, 140000));
    super.onInit();
    pro.add(productos(
        3,
        "Sueter",
        "https://w7.pngwing.com/pngs/977/805/png-transparent-t-shirt-polo-shirt-napapijri-jacket-youth-culture-tshirt-text-fashion.png",
        0,
        40000));
    super.onInit();
    pro.add(productos(
        2,
        "Jeans",
        "https://e7.pngegg.com/pngimages/941/523/png-clipart-tactical-pants-clothing-shorts-jeans-juvenile-run-it-tactical-pants-electric-blue-thumbnail.png",
        0,
        100000));
    super.onInit();
  }

  void cambiarPosicion(int x) {
    _posicionPagina.value = x;
  }

  int get posicionPagina => _posicionPagina.value;

  void cambiarCantidad(int posicion, int valor) {
    pro[posicion].cantidad = valor;
  }

  int calcularTotal() {
    int total = 0;
    for (int i = 0; i < pro.length; i++) {
      total = total + pro[i].cantidad * pro[i].precio;
    }
    return total;
  }

  void limpiarTodo() {
    for (int i = 0; i < pro.length; i++) {
      pro[i].cantidad = 0;
    }
    calcularTotal();
  }
}
