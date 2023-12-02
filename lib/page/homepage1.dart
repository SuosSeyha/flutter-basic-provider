import 'package:flutter/material.dart';
import 'package:flutter_basic_provider/controller/homepage1_controller.dart';
import 'package:provider/provider.dart';
class Homepage1 extends StatelessWidget {
  const Homepage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Homepage1Controller>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text("Counter App"),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            value.count.toString(),
            style: const TextStyle(
              fontSize: 50
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final counter = context.read<Homepage1Controller>();
            counter.increment();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}