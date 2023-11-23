import 'dart:html';
import 'package:bacca_al/controller/lingkaran_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranPage extends StatelessWidget {
  LingkaranPage({Key? key}) : super(key: key);
  final LingkaranController _LingkaranController = Get.put(LingkaranController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Lingkaran ",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.green.shade300,
      ),
      body: ListView(
        children: [
          Image.asset("assets/lingkaran.png", height: 300, width: 300,),
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
                  "Lingkaran adalah bentuk yang terdiri dari semua titik dalam bidang yang berjarak tertentu dari titik tertentu, pusat; ekuivalennya adalah kurva yang dilacak oleh titik yang bergerak dalam bidang sehingga jaraknya dari titik tertentu adalah konstan. Jarak antara titik mana pun dari lingkaran dan pusat disebut jari-jari. Artikel ini adalah tentang lingkaran dalam geometri Euklides, dan, khususnya, bidang Euklides, kecuali jika dinyatakan sebaliknya.Secara khusus, sebuah lingkaran adalah kurva tertutup sederhana yang membagi pesawat menjadi dua wilayah: interior dan eksterior. Dalam penggunaan sehari-hari, istilah lingkaran dapat digunakan secara bergantian untuk merujuk pada batas gambar, atau keseluruhan gambar termasuk bagian dalamnya; dalam penggunaan teknis yang ketat, lingkaran hanyalah batas dan seluruh gambar disebut cakram.Lingkaran juga dapat didefinisikan sebagai jenis elips khusus di mana dua fokus bertepatan dan eksentrisitasnya adalah 0, atau bentuk dua dimensi yang melingkupi area per satuan perimeter kuadrat, menggunakan kalkulus variasi.Lingkaran adalah bentuk geometri dua dimensi yang terdiri dari semua titik dalam bidang yang memiliki jarak yang sama dari satu titik tertentu yang disebut pusat lingkaran", style: TextStyle(color: Color(0xFFFFFFFF)),)),
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
                          _LingkaranController.jari = int.parse(value);
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


                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            _LingkaranController.hitungLuas();
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
                            _LingkaranController.hitungKeliling();
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
                Obx(() => Text(_LingkaranController.luas.value, style: const TextStyle(color: Color(0xFFFFFFFF)))),
                Obx(() => Text(_LingkaranController.kel.value, style: const TextStyle(color: Color(0xFFFFFFFF)))),
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
