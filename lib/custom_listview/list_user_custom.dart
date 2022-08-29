import 'package:flutter/material.dart';
import 'package:app1_hocflutter/duadulieu_state_len_listtile_sudungham_map/user.dart';
import 'package:intl/intl.dart';

class List_user extends StatelessWidget {
  late List<User> list_User;
  List_user({required this.list_User});

  // ham sd map chuyen lisst sang listtile
  List<Widget> _list_Title() {
    int a = 0;
    final now = DateTime.now();
    return list_User.map((e) {
      a++;
      return Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: a % 2 == 0 ? Colors.green : Colors.teal,
          elevation: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Padding(padding: EdgeInsets.only(left: 10)),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(padding: EdgeInsets.all(5)),
                    Text(
                      e.user_name,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      e.user_passw,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                  ]),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: Text(now.toString(),
                        style:
                            const TextStyle(fontSize: 10, color: Colors.white)),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    padding: EdgeInsets.all(10),
                  )
                  //   Text(now.toString(),
                  // style: const TextStyle(fontSize: 20,
                  //     color: Colors.white))
                ],
              )),
              const Padding(padding: EdgeInsets.only(right: 10)),
            ],
          ));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Container(
      height: 500,
      child: ListView(
        children: _list_Title(),
      ),
    );
  }
}
