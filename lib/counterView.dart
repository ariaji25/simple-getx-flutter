import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/counter2.dart';
import 'package:get_x/counterController.dart';

class MyHomePage extends GetView<CounterController> {
  @override
  Widget build(BuildContext context) {
    var _controller2 = Get.find<Counter2>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Obx(() {
              return Text(
                controller.conter.toString(),
                style: Theme.of(context).textTheme.headline4,
              );
            }),
            Obx(() {
              return Text(
                _controller2.counter2(),
                style: Theme.of(context).textTheme.headline4,
              );
            })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
          _controller2.increment(controller.conter());
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
