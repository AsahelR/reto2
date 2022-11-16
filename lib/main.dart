import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/controladores/controlador_principal.dart';

import 'n1/interfaz.dart';

void main() {
  Get.put(controladorPrincipal());
  runApp(const MyApp());
}
