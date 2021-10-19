import 'package:flutter/cupertino.dart';
import 'package:html/dom.dart' show Document;
import 'package:http/http.dart';
import 'package:html/parser.dart';
import 'package:intl/intl.dart';

class MealProvider extends StatelessWidget {
  final String bld;
  const MealProvider({Key? key, this.bld = "lunch"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var date = DateFormat('yyyy/MM/dd').format(DateTime.now());

    Stream<Response> html =
        get(Uri.parse("http://school.gyo6.net/gbsw/food/" + date + "/" + bld))
            .asStream();

    return StreamBuilder<Response>(
        stream: html,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Text("Loading...");
          }

          Document doc = parse(snapshot.data?.body);
          List<Text> menus = [];

          var elem = doc.querySelectorAll("div")[1];
          var menuraw = elem.innerHtml.split("<br>");

          for (var i = 1; i < menuraw.length; i++) {
            menus.add(Text(menuraw[i].replaceAll(RegExp("(\\d|\\.)"), "")));
          }

          if (menus.isEmpty) {
            menus.add(const Text("급식 정보가 없습니다."));
          }

          return Column(children: [Text(date + ' ' + bld), ...menus]);
        });
  }
}
