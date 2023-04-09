import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/not.dart';
import 'package:flutter_application_2/not_item.dart';

class NotDetay extends StatelessWidget {
  final Not secilenNot;
  const NotDetay({required this.secilenNot, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Görev Etkileşim Sayfası'),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade300,
              width: 4.0,
            ),
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.0),
              Text(
                secilenNot.notAdi,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                secilenNot.notTarihi,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                secilenNot.notDetay,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              TextFormField(
                maxLines: 3,
                decoration: InputDecoration(
                  hintText:
                      'Düşüncelerini ve geri bildirimlerini burada paylaşabilirsin.',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Paylaş",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      backgroundColor: Colors.teal,
                      minimumSize: Size(50, 60),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
