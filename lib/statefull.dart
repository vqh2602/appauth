import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Statefull extends StatefulWidget {
  String name;
  int age;
  Statefull({required this.name, required this.age});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _MyStatefull();
  }
}

class _MyStatefull extends State<Statefull> {
  late String _email ='';
  // đối tượng giúp theo dõi sự thay đổi của textfield
  final emailedit_state = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    // lấy gày giờ hiện tại
    DateTime datetimenow = new DateTime.now();


    return MaterialApp(
      title: "My app",
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // sử dụng thẻ cntainer để áp dụng các thuộc tính padding, ...
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  controller: emailedit_state,
                  onChanged: (text){
                    // thay đổi state
                    setState(() {
                      _email = text;
                    });
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        // bo tròn input
                        borderRadius: BorderRadius.all(
                          Radius.circular(20)
                        )
                      ),
                      labelText: "Nhập email của bạn"),
                ),
              ),
              Text(
                "email: $_email",
                style: const TextStyle(color: Colors.lightGreen, fontSize: 20 ),
              ),
              Text(
                "Tên: ${widget.name} Tuổi : ${widget.age}",
                style: const TextStyle(color: Colors.lightBlue, fontSize: 40),
              ),
              Text(
                // format datetime bang intl
                  DateFormat.yMMMd().format(DateTime.now()),
                style: const TextStyle(color: Colors.lightBlue, fontSize: 20)
              )
            ],
          ),
        ),
      ),
    );
  }
}
