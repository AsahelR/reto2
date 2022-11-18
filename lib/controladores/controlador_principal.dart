import 'package:get/get.dart';
import 'package:reto2/class/productos.dart';

class controladorPrincipal extends GetxController {
  final _posicionPagina = 0.obs;
  final pro = <productos>[].obs;

  @override
  void onInit() {
    pro.add(productos(1, "Tenis",
        "https://ss237.liverpool.com.mx/xl/1105645381.jpg", 0, 140000));

    pro.add(productos(
        2,
        "Sueter",
        "https://www.nicepng.com/png/detail/121-1214330_camiseta-deportiva-t-shirt-adidas-png.png",
        0,
        40000));

    pro.add(productos(
        3,
        "Jeans",
        "https://e7.pngegg.com/pngimages/941/523/png-clipart-tactical-pants-clothing-shorts-jeans-juvenile-run-it-tactical-pants-electric-blue-thumbnail.png",
        0,
        100000));

    pro.add(productos(
        4,
        "Suerte",
        "https://assets.adidas.com/images/w_600,f_auto,q_auto/bee03878988d4c6d83e6a9f4013f356f_9366/Trefoil_Tee_Red_ED7493_01_laydown.jpg",
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
