import 'dart:html';
import 'package:bacca_al/controller/segitiga_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatelessWidget {
  SegitigaPage({Key? key}) : super(key: key);
  final SegitigaController _SegitigaController = Get.put(SegitigaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Segitiga Sama Sisi",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.green.shade300,
      ),
      body: ListView(
        children: [
          Image.asset("assets/segitiga.png", height: 300, width: 300,),
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
                  "Sebuah segitiga adalah poligon dengan tiga ujung dan tiga simpul. Ini adalah salah satu bentuk dasar dalam geometri. Segitiga dengan simpul A, B, dan C dilambangkanDalam geometri Euclidean, setiap tiga titik, ketika non-collinear, menentukan segitiga unik dan sekaligus, sebuah bidang unik (yaitu ruang Euclidean dua dimensi). Dengan kata lain, hanya ada satu bidang yang mengandung segitiga itu, dan setiap segitiga terkandung dalam beberapa bidang. Jika seluruh geometri hanya bidang Euclidean, hanya ada satu bidang dan semua segitiga terkandung di dalamnya; namun, dalam ruang Euclidean berdimensi lebih tinggi, ini tidak lagi benar. Artikel ini adalah tentang segitiga dalam geometri Euclidean, dan khususnya, bidang Euclidean, kecuali jika disebutkan sebaliknya.", style: TextStyle(color: Color(0xFFFFFFFF)),)),
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
                          _SegitigaController.sisi = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Alas",
                          hintText: "Masukkan Alas",
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
                          _SegitigaController.tinggi = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Tinggi",
                          hintText: "Masukkan Tinggi",
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
                            _SegitigaController.hitungLuas();
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
                            _SegitigaController.hitungKeliling();
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
                Obx(() => Text(_SegitigaController.luas.value, style: const TextStyle(color: Color(0xFFFFFFFF)))),
                Obx(() => Text(_SegitigaController.kel.value, style: const TextStyle(color: Color(0xFFFFFFFF)))),
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
