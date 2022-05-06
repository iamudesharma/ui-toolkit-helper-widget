import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Ui Toolkit",
        ),
      ),
      body: LayoutBuilder(
        builder: ((context, constraints) {
          if (constraints.maxWidth <= 600) {
            return ListView.builder(
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text("Item $index"),
                );
              },
            );
          } else if (constraints.maxWidth >= 600 &&
              constraints.maxWidth <= 1000) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Center(child: Text("Item $index")),
                );
              },
            );
          } else {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
              ),
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Center(child: Text("Item $index")),
                );
              },
            );
          }
        }),
      ),
    );
  }
}
