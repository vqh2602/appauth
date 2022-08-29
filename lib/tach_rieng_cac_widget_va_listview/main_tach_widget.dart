import 'package:flutter/material.dart';
import 'package:app1_hocflutter/duadulieu_state_len_listtile_sudungham_map/user.dart';
import 'list_user.dart';

class Sudung_card_1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _MySudung_card_1();
  }
}

class _MySudung_card_1 extends State<Sudung_card_1> {
  // tạo đối tượng để in hộp thoại thông báo
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  // đối tượng giúp theo dõi sự thay đổi của textfield
  final _emailedit_controller = TextEditingController();
  final _passedit_controller = TextEditingController();
  // biến dl email va pass
  // String _user_email ="", _user_pass ="";
  User _user = User(user_name: "", user_passw: "");
  List<User> list_User = <User>[];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    // ham main
    return MaterialApp(
      title: "App2",
      home: Scaffold(
        key: scaffoldKey,
        // SAFEArea: để hiện thi k bị đè lên tai thỏ
        body: SafeArea(
          // cách lề trái phải padding 20
          minimum: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
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
                      onChanged: (text) {
                        // thay đổi state
                        setState(() {
                          _user.user_name = text;
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
                      onChanged: (text) {
                        // thay đổi state
                        setState(() {
                          _user.user_passw = text;
                        });
                      },
                    )),
                TextButton(
                  onPressed: () {
                    setState(() {
                      list_User.add(_user);
                      _user = User(user_name: "", user_passw: "");
                      // đặt lại giá trị email và pass
                      // _user.user_name="";
                      // _user.user_passw="";
                      // set giá trị 2 ô textfield về rỗng
                      _emailedit_controller.text = "";
                      _passedit_controller.text = "";
                    });
                    scaffoldKey.currentState!.showSnackBar(SnackBar(
                      content: Text('list user: ' + list_User.toString()),
                      duration: Duration(seconds: 3),
                    ));
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.pink,
                    backgroundColor: Colors.lightBlueAccent,
                  ),
                  child: Text("đăng kí"),
                ),
                // sử dụng ham in ra list
                List_user(list_User: list_User)
              ],
            ),
          ),
        )
      )
    );
  }
}
