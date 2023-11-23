import 'package:get/get.dart';

class LingkaranController extends GetxController{
  int jari= 0;
  final luas= "".obs;
  final kel= "".obs;



  void hitungLuas(){
    num r = jari%7;
    num p;
    if(r==1){
      p = 314/100;
    }else{
      p = 22/7;
    }
    num hl = p*jari*jari;

    luas.value = "Luas Lingkaran dengan Jari - Jari $jari adalah $hl";


  }

  void hitungKeliling(){
    num r = jari%7;
    num p;
    if(r==1){
      p = 314/100;
    }else{
      p = 22/7;
    }
    num hk = p*jari*2;
    kel.value = "Keliling Lingkaran dengan Jari - Jari $jari adalah $hk";
  }
}