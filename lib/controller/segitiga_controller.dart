import 'package:get/get.dart';

class SegitigaController extends GetxController{
  int sisi= 0;
  int tinggi= 0;
  final luas= "".obs;
  final kel= "".obs;



  void hitungLuas(){
    num hl = (sisi*tinggi)/2;

    luas.value = "Luas Segitiga dengan Panjang Alas $sisi dan Tinggi $tinggi adalah $hl";


  }

  void hitungKeliling(){
    int hk = 3*sisi;
    kel.value = "Keliling Segitiga dengan Panjang Alas $sisi adalah $hk";
  }
}