
import 'SoruBankasi.dart';

class Test{
  int _a=0;
  List<SoruBankasi>_s=[
    SoruBankasi(soru:'Titanic gelmiş geçmiş en büyük gemidir',cevap:false),
    SoruBankasi(soru:'Dünyadaki tavuk sayısı insan sayısından fazladır',cevap: true),
    SoruBankasi(soru:'Kelebeklerin ömrü bir gündür',cevap:false),
    SoruBankasi(soru:'Dünya düzdür',cevap:false),
    SoruBankasi(soru: 'Kaju fıstığı aslında bir meyvenin sapıdır',cevap:true),
    SoruBankasi(soru:'Fatih Sultan Mehmet hiç patates yememiştir',cevap:true),
    SoruBankasi(soru:'Fransızlar 80 demek için, 4 - 20 der',cevap:true),
  ];
  getSoru(){
    return _s[_a].soru;
  }
  getYanit(){
    return _s[_a].cevap;
  }
  void sayi() {
    _a++;
  }
bool bittiMi(){
  if(_a >= _s.length-1) { return true;}
  else{return false;}
}
void sifirla(){
    _a=0;
  }
}