import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Home Page",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.green.shade300,
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Expanded(child: CustomMenu(title: "Persegi", imageAsset: "assets/persegi.png")),
                Expanded(child: CustomMenu(title: "Persegi Panjang", imageAsset: "assets/panjang.png")),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
              Expanded(child: CustomMenu(title: "Segitiga", imageAsset: "assets/segitiga.png")),
              Expanded(child: CustomMenu(title: "Lingkaran", imageAsset: "assets/lingkaran.png")),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAsset,
    required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: const BoxDecoration(
            color: Color(0xFF457D2C),
            borderRadius: BorderRadius.all(Radius.circular(10)
            )),
        child: Column(
          children: [
            Image.asset(
              imageAsset,
              width: 250,
              height: 200,
            ),
            Text(title, style: TextStyle(color: Color(0xFFFFFFFF)),),
          ],
        ));
  }
}
