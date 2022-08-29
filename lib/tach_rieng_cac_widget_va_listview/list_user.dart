
import 'package:flutter/material.dart';
import 'package:app1_hocflutter/duadulieu_state_len_listtile_sudungham_map/user.dart';

class List_user extends StatelessWidget{

  late List<User> list_User;
  List_user({required this.list_User});

  // ham sd map chuyen lisst sang listtile
  List<Widget> _list_Title() {
    int a = 0;
    return list_User.map((e) {
      a++;
      return Card(
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: a % 2 == 0 ? Colors.green : Colors.teal,
        elevation: 10,
        child: ListTile(
          leading: const Icon(Icons.account_box_rounded),
          title: Text(
            "email: " + e.user_name,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18),
          ),
          subtitle: Text("email: " + e.user_passw),
          onTap: () {
            print("tap");
          },
        ),
      );
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