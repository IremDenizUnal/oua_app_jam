import 'package:flutter/material.dart';
import 'package:flutter_application_2/not_listesi.dart';

class notepage extends StatelessWidget {
  const notepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Image.asset(
          'images/0ed7621e-30ae-4f3b-92a9-4c70dc7f6221-removebg-preview.png',
          height: 40,
          fit: BoxFit.contain,
        ),
        title: Text(
          "Aylık Görev Güncellemesi",
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16.0, right: 25.0, bottom: 30.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Flutter",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                backgroundColor: Colors.grey.shade400,
                                minimumSize: Size(140, 115))),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextFormField(
                        maxLines: 4,
                        autofocus: true,
                        decoration: InputDecoration(
                          hintText:
                              'Bu ay öğrendiğin konuları ve izlenimlerini açıklar mısın?',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Row(children: [
                  Expanded(
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Coursera",
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              backgroundColor: Colors.grey.shade400,
                              minimumSize: Size(140, 115))),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextFormField(
                      maxLines: 4,
                      autofocus: true,
                      decoration: InputDecoration(
                        hintText:
                            'Bu ay öğrendiğin konuları ve izlenimlerini açıklar mısın?',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Girişimcilik",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                backgroundColor: Colors.grey.shade400,
                                minimumSize: Size(140, 115))),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextFormField(
                        maxLines: 4,
                        autofocus: true,
                        decoration: InputDecoration(
                          hintText:
                              'Bu ay öğrendiğin konuları ve izlenimlerini açıklar mısın?',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "İngilizce",
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            backgroundColor: Colors.grey.shade400,
                            minimumSize: Size(140, 115),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextFormField(
                        maxLines: 4,
                        autofocus: true,
                        decoration: InputDecoration(
                          hintText:
                              'Bu ay öğrendiğin konuları ve izlenimlerini açıklar mısın?',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotListesi()));
                    },
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
