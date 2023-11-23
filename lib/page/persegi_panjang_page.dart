import 'dart:html';
import 'package:bacca_al/controller/persegi_panjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangPage extends StatelessWidget {
  PersegiPanjangPage({Key? key}) : super(key: key);
  final PersegiPanjangController _persegiPanjangController = Get.put(PersegiPanjangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Persegi Panjang",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.green.shade300,
      ),
      body: ListView(
        children: [
          Image.asset("assets/panjang.png", height: 300, width: 300,),
          const Padding(
            padding: EdgeInsets.all(8.0)
          ),
          Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
              margin:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: const BoxDecoration(
                  color: Color(0xFF5AAD36),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: const Text(
                  "Persegi panjang  adalah bangun datar dua dimensi yang dibentuk oleh dua pasang sisi yang masing-masing sama panjang dan sejajar dengan pasangannya, dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku. Persegi panjang merupakan turunan dari segi empat yang mempunyai ciri khusus dua sisi sejajar sama panjang dan keempat sudutnya siku-siku (90°).  Rusuk terpanjang disebut sebagai panjang dan rusuk terpendek disebut sebagai lebar""(90°)", style: TextStyle(color: Color(0xFFFFFFFF)),)),
          Container(
            padding:
            const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
            margin:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: const BoxDecoration(
                color: Color(0xFF5AAD36),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child:Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(

                        onChanged: (String value) {
                          _persegiPanjangController.panjang = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Panjang",
                          hintText: "Masukkan Panjang",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding:
                          const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(

                        onChanged: (String value) {
                          _persegiPanjangController.lebar = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Lebar",
                          hintText: "Masukkan Lebar",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding:
                          const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            _persegiPanjangController.hitungLuas();
                          },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color (0xFFD5801F),
                          ),
                          child: const Text("Hitung Luas" , style: TextStyle(color: Color(0xFFFFFFFF)),),),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            _persegiPanjangController.hitungKeliling();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color (0xFFCBA224),
                          ),
                          child: const Text("Hitung Keliling", style: TextStyle(color: Color(0xFFFFFFFF)),)),
                    ),
                  ],
                ),
              ],
            ),
            ),
          Container(
            padding:
            const EdgeInsets.fromLTRB(50,10,50,70),
            margin:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: const BoxDecoration(
                color: Color(0xFF5AAD36),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child : Column(
              children: [
                const Text("Hasil :\n", style: TextStyle(color: Color(0xFFFFFFFF)),),
                Obx(() => Text(_persegiPanjangController.luas.value, style: const TextStyle(color: Color(0xFFFFFFFF)))),
                Obx(() => Text(_persegiPanjangController.kel.value, style: const TextStyle(color: Color(0xFFFFFFFF)))),
                const Text("======================", style: TextStyle(color: Color(0xFFFFFFFF)),),
                const Text("Thank You", style: TextStyle(color: Color(0xFFFFFFFF)),),
              ],
            ),
      )

        ],
      ),
    );
  }
}
