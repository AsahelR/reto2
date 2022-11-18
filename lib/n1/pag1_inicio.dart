import 'package:flutter/material.dart';

class inicio extends StatefulWidget {
  const inicio({super.key});

  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          heightFactor: 1.5,
          child: Image(
              image: NetworkImage(
                  "https://previews.123rf.com/images/poemsuk/poemsuk1601/poemsuk160100021/51005477-tienda-de-ropa-boutique-cubierta-de-telas-de-los-hombres-de-moda-sastrer%C3%ADa-exterior-del-edificio-ilu.jpg"))),
    );
  }
}
