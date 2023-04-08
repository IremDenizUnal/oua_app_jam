import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/not.dart';
import 'package:flutter_application_2/not_detay.dart';

class NotItem extends StatelessWidget {
  final Not listelenenNot;
  const NotItem({required this.listelenenNot, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Card(
      elevation: 4,
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => NotDetay(secilenNot: listelenenNot),
            ),
          );
        },
        title: Text(listelenenNot.notAdi),
        subtitle: Text(listelenenNot.notTarihi),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.pink,
        ),
      ),
    );
  }
}
