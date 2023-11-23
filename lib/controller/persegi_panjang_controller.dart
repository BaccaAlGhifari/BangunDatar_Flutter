import 'package:get/get.dart';

class PersegiPanjangController extends GetxController{
  int panjang= 0;
  int lebar= 0;
  final luas= "".obs;
  final kel= "".obs;



  void hitungLuas(){
    int hl = panjang * lebar;

    luas.value = "Luas Persegi Panjang dengan Panjang $panjang dan Lebar $lebar adalah $hl";


  }

  void hitungKeliling(){
    int hk = 2*(panjang+lebar);
    kel.value = "Keliling Persegi Panjang dengan Panjang $panjang dan Lebar $lebar adalah $hk";
  }
}