import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  ValueNotifier<int> _counter = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ValueListenableBuilder(
            valueListenable: _counter,
            builder: (BuildContext ctx, int newvalue, Widget? child) {
              return Text('$newvalue');
            },
            child: Text(_counter.toString())),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Showbottomsheet(context);
          print(_counter);
          _counter.value = _counter.value + 1;
        },
      ),
    );
  }

  Future<void> Showbottomsheet(BuildContext ctx) async {
    showModalBottomSheet(
        context: ctx,
        builder: (ctx1) {
          return Container(
            width: double.infinity,
            height: 500,
            color: Colors.lightGreen,
            child: ListView(
              children: [
                Text('hehe'),
                TextButton(
                    onPressed: () {
                      Navigator.of(ctx1).pop();
                    },
                    child: Text('close me'))
              ],
            ),
          );
        });
  }
}
