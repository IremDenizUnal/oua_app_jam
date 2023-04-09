import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/not.dart';
import 'package:flutter_application_2/not_detay.dart';

class NotItem extends StatelessWidget {
  final Not listelenenNot;
  const NotItem({required this.listelenenNot, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Container(
      margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 4,
        child: ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => NotDetay(secilenNot: listelenenNot),
              ),
            );
          },
          title: Text(listelenenNot.notAdi, style: TextStyle(fontSize: 20.0),),
          subtitle: Text(listelenenNot.notTarihi, style: TextStyle(fontSize: 14.0),),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.teal.shade400,
          ),
        ),
      ),
    );
  }
}
