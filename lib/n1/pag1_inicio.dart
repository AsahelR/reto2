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
          child: Image(
              image: NetworkImage(
                  "https://www.pngarts.com/files/3/Shopping-Cart-PNG-Download-Image.png"))),
    );
  }
}
