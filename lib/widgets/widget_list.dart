import 'package:flutter/material.dart';

class WidgetList extends StatelessWidget {
  late final List<Widget> _widgets;

  WidgetList({Key? key, required List<Widget?> children}) : super(key: key) {
    List<Widget> widgets = children.whereType<Widget>().toList();

    _widgets = List<Widget>.generate(
      widgets.length * 2,
      (i) => ((i + 1) % 2 == 0)
          ? widgets[i ~/ 2]
          : const SizedBox(
              height: 30,
            ),
    );

    _widgets.add(
      const SizedBox(
        height: 200,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center, children: _widgets),
    );
  }
}
