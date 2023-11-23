import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final luas= "".obs;
  final kel= "".obs;



  void hitungLuas(){
    int hl = sisi * sisi;

    luas.value = "Luas Persegi dengan sisi $sisi adalah $hl";


  }

  void hitungKeliling(){
    int hk = 4*sisi;
    kel.value = "Keliling Persegi dengan sisi $sisi adalah $hk";
  }
}