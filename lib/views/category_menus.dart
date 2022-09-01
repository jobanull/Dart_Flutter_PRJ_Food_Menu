import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(15),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        childAspectRatio: 10 / 15,
      ),
      itemCount: 3,
      itemBuilder: (context, index) {
        return Container(
            color: Colors.red,
            child: Column(children: [
              Text("Title"),
              Text("Images"),
            ]));
      },
    );
  }
}
