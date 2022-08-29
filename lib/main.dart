import 'package:app1_hocflutter/statefull.dart';
import 'package:flutter/material.dart';
import 'package:app1_hocflutter/statefull.dart';
import 'package:app1_hocflutter/Layout_voi_SafeArea_Column_FlatButton_TextField.dart';
import 'package:app1_hocflutter/duadulieu_state_len_listtile_sudungham_map/duadulieu_state_len_listtile_sudungham_map.dart';
import 'package:app1_hocflutter/su_dung_the_card/card.dart';
import 'package:app1_hocflutter/tach_rieng_cac_widget_va_listview/main_tach_widget.dart';
import 'package:app1_hocflutter/tuy_bien_appbar/appbar.dart';
import 'package:app1_hocflutter/custom_listview/custom_listview.dart';
import 'package:app1_hocflutter/modalBottomSheet/modalBottomSheet.dart';

void main() {
  // runApp(Statefull(name: "Huy", age: 18));
  // runApp(Layout_vs_safearea_column_fatButton_textfield());
  runApp(MaterialApp(
    title: "Home",
    home: ModelBottomSheet(),
  ));
}

// void main() {
//   runApp(MaterialApp(
//     title: "App",
//     home: Mystandfold(),
//   ));
// }
//
// class Myapp_bar extends StatelessWidget {
//   Myapp_bar({required this.title});
//   final Widget title;
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Container(
//       height: 50.0,
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       decoration: const BoxDecoration(color: Colors.lightGreen),
//       // ptu con - trải ngang ra
//       child: Row(
//         // 1 thàng con dùng child, 2 thì dùng children
//         children: <Widget>[
//           // 1 nuts
//           const IconButton(
//             onPressed: null,
//             icon: Icon(Icons.add_circle),
//             tooltip: "Nuts baams",
//           ),
//
//           // giups fin taats cả khoảng trống lại
//           Expanded(
//             child: title,
//           ),
//
//           const IconButton(
//             onPressed: null,
//             icon: Icon(Icons.account_circle),
//             tooltip: "Nuts baams",
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class Mystandfold extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Material(
//         child: Column(
//       children: <Widget>[
//         Myapp_bar(
//             title: Text(
//           "App1",
//           style: Theme.of(context).primaryTextTheme.subtitle1,
//         )),
//         const Expanded(
//             child: Center(
//           child: Text("Hello huy!"),
//         ))
//       ],
//     ));
//   }
// }
//
// class Myapp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text("loz má uww", textDirection: TextDirection.ltr),
//     );
//   }
// }
