

import 'package:flutter/material.dart';
import 'package:app1_hocflutter/duadulieu_state_len_listtile_sudungham_map/user.dart';
import 'package:app1_hocflutter/custom_listview/list_user_custom.dart';
import 'package:flutter_appauth/flutter_appauth.dart';

class ModelBottomSheet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _MyModelBottomSheet();
  }
}

class _MyModelBottomSheet extends State<ModelBottomSheet> {
  // tạo đối tượng để in hộp thoại thông báo
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  // đối tượng giúp theo dõi sự thay đổi của textfield
  final _emailedit_controller = TextEditingController();
  final _passedit_controller = TextEditingController();
  // biến dl email va pass
  // String _user_email ="", _user_pass ="";
  User _user = User(user_name: "", user_passw: "");
  List<User> list_User = <User>[];

  // ham resset gia tri vaf them vao list
  void _reset_giatri() {
    if (_user.user_name.isEmpty || _user.user_passw.isEmpty) {
      return;
    } else {
      list_User.add(_user);
      _user = User(user_name: "", user_passw: "");
      // đặt lại giá trị email và pass
      // _user.user_name="";
      // _user.user_passw="";
      // set giá trị 2 ô textfield về rỗng
      _emailedit_controller.text = "";
      _passedit_controller.text = "";
    }
  }

  // hàm su dung modal bottom sheet
  void _onButtonShow_ModelBottomSheet() {
    showModalBottomSheet(
        context: this.context,
        builder: (context) {
          return Column(
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
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green, // background
                              onPrimary: Colors.white, // foreground
                            ),
                            onPressed: () {
                              setState(() {
                                _reset_giatri();
                              });
                            },
                            child: const Text("Save"))),
                    const Padding(
                        padding: EdgeInsets.only(left: 10, right: 10)),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            }, child: const Text("Canle")))
                  ],
                ),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    // ham main
    return MaterialApp(
        title: "App2",
        home: Scaffold(
            // thanh bar
            appBar: AppBar(
              title: const Text("My app"),
              actions: [
                IconButton(
                  icon: const Icon(Icons.add_box_sharp),
                  tooltip: 'Theem user',
                  onPressed: () {
                    // ScaffoldMessenger.of(context).showSnackBar(
                    //     const SnackBar(content: Text('This is a snackbar')));
                    // setstate giup rebuild lai giao dien
                    setState(() {
                      this._reset_giatri();
                    });
                  },
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              tooltip: "Theem",
              child: Icon(Icons.add),
              onPressed: () {
                this._onButtonShow_ModelBottomSheet();
                // setState(() {
                //   this._reset_giatri();
                // });
              },
            ),
            // nut noi tren man hinh
            key: scaffoldKey,
            // SAFEArea: để hiện thi k bị đè lên tai thỏ
            body: SafeArea(
              // cách lề trái phải padding 20
              minimum: const EdgeInsets.only(left: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    TextButton(
                      onPressed: () async{
    const AUTH0_DOMAIN = 'devserp.us.auth0.com';
    const AUTH0_CLIENT_ID = 'QNL2Hxrm9wY73SW9t5W4iAm6e58aQL7p';

    const AUTH0_REDIRECT_URI = 'com.vqh2602.app1hocflutter://login-callback';
    // const AUTH0_REDIRECT_URI = 'com.example.masterappmodule://login-callback';
    const AUTH0_ISSUER = 'https://$AUTH0_DOMAIN';

    const FlutterAppAuth appAuth = const FlutterAppAuth();
    // final FlutterSecureStorage secureStorage = const FlutterSecureStorage();

      final AuthorizationTokenResponse? result =
      await appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
            AUTH0_CLIENT_ID,
            AUTH0_REDIRECT_URI,
            issuer: AUTH0_ISSUER,
            scopes: ['openid', 'profile', 'mail', 'offline_access'],
            promptValues: [
              'login'
            ] // ignore any existing session; force interactive login prompt
        ),
      );
      print('token appAuth google: ${result?.idToken.toString()}');

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
            )));
  }
}
