import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/strings.dart';
import 'package:flutter_application_2/model/not.dart';
import 'package:flutter_application_2/not_item.dart';

class NotListesi extends StatelessWidget {
  late List<Not> tumNotlar;

  NotListesi() {
    tumNotlar = veriKaynaginiHazirla();
    print(tumNotlar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Görev Etkileşim Sayfası'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child:
        ListView.builder(
          itemBuilder: (context, index) {
            return NotItem(listelenenNot: tumNotlar[index]);
          },
          itemCount: tumNotlar.length,
        ),
      ),
    );
  }

  List<Not> veriKaynaginiHazirla() {
    List<Not> gecici = [];
    for (int i = 0; i < 2; i++) {
      Not eklenecekNot = Not(Strings.NOT_ADLARI[i], Strings.NOT_TARIHLERI[i],
          Strings.NOT_GENEL_OZELLIKLERI[i]);
      gecici.add(eklenecekNot);
    }
    return gecici;
  }
}
