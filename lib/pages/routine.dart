import 'package:ethocity_v3/Constants/customclr.dart';
import 'package:ethocity_v3/UI/Widget/customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'Signup.dart';
class routine extends StatelessWidget {
  Box?databox = Hive.box('stdnt_data');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ValueListenableBuilder(
              valueListenable: Hive.box('stdnt_data').listenable(),
              builder: (context, value, child) {
                return ListView.builder(
                itemCount: databox!.keys.toList().length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 50,
                        width: 310,
                        color: Colors.amber,
                        child: Text(databox!.getAt(index)["name"].toString()),
                      ),
                      space(ht: 8),
                      Container(
                        height: 50,
                        width: 310,
                        color: Colors.amber,
                        child: Text(databox!.getAt(index)["id"].toString()),
                      ),
                      space(ht: 8),
                      Container(
                        height: 50,
                        width: 310,
                        color: Colors.amber,
                        child: Text(databox!.getAt(index)["dept"].toString()),
                      ),
                      space(ht: 8),
                      Container(
                        height: 50,
                        width: 310,
                        color: Colors.amber,
                        child: Text(databox!.getAt(index)["sem"].toString()),
                      ),
                      space(ht: 8),
                      Container(
                        height: 50,
                        width: 310,
                        color: Colors.amber,
                        child: Text(databox!.getAt(index)["sec"].toString()),
                      ),
                      space(ht: 8),
                    ],
                  );
                },
              );
              },
            ),
      )

    );
  }
}