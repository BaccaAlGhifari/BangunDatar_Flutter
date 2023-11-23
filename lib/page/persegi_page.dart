import 'dart:html';
import 'package:bacca_al/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({Key? key}) : super(key: key);
  final PersegiController _persegiController = Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Persegi",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.green.shade300,
      ),
      body: ListView(
        children: [
          Image.asset("assets/persegi.png", height: 300, width: 300,),
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
                  "Persegi atau bujur sangkar adalah bangun datar dua dimensi yang dibentuk oleh empat buah rusuk yang sama panjang dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku. Persegi merupakan turunan dari segi empat yang mempunyai ciri khusus keempat sisinya sama panjang dan keempat sudutnya siku-siku ""(90°)", style: TextStyle(color: Color(0xFFFFFFFF)),)),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: TextFormField(

                    onChanged: (String value) {
                      _persegiController.sisi = int.parse(value);
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Sisi",
                      hintText: "Masukkan Sisi",
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            _persegiController.hitungLuas();
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
                            _persegiController.hitungKeliling();
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
                Obx(() => Text(_persegiController.luas.value, style: const TextStyle(color: Color(0xFFFFFFFF)))),
                Obx(() => Text(_persegiController.kel.value, style: const TextStyle(color: Color(0xFFFFFFFF)))),
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
