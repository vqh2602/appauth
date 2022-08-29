import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout_vs_safearea_column_fatButton_textfield extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _MyLayout_vs_safearea_column_fatButton_textfield();
  }
}

class _MyLayout_vs_safearea_column_fatButton_textfield
    extends State<Layout_vs_safearea_column_fatButton_textfield> {
  // tạo đối tượng để in hộp thoại thông báo
  final GlobalKey<ScaffoldState> scaffoldKey =
  GlobalKey<ScaffoldState>();

  // đối tượng giúp theo dõi sự thay đổi của textfield
  final _emailedit_controller = TextEditingController();
  final _passedit_controller = TextEditingController();
  // biến dl email va pass
  String _user_email ="", _user_pass ="";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return MaterialApp(
      title: "App2",
      home: Scaffold(
        key: scaffoldKey,
        // SAFEArea: để hiện thi k bị đè lên tai thỏ
        body: SafeArea(
          // cách lề trái phải padding 20
          minimum: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                  child: TextField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            // bo tròn input
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        labelText: "Email"),
                    controller: _emailedit_controller,
                    onChanged: (text){
                      // thay đổi state
                      setState(() {
                        _user_email = text;
                      });
                    },
                  )),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                  child: TextField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            // bo tròn input
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        labelText: "Mật Khẩu"),
                    controller: _passedit_controller,
                    onChanged: (text){
                      // thay đổi state
                      setState(() {
                        _user_pass = text;

                      });
                    },
                  )),
              TextButton(
                onPressed: () {
                  scaffoldKey.currentState!.showSnackBar(
                      SnackBar(content: Text('Content = ${_user_email}, Amount = ${_user_pass}'),
                        duration: Duration(seconds: 3),
                      ));
                },
                style: TextButton.styleFrom(
                  primary: Colors.pink,
                  backgroundColor: Colors.lightBlueAccent,
                ),
                child: Text("đăng kí"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
