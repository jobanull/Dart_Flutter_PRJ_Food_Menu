import 'package:flutter/material.dart';
import 'package:food_menus_application/views/category_detail_item.dart';

class CategoryItem extends StatelessWidget {
  final String id;

  final String title;

  final String images;

  const CategoryItem(
      {Key? key, required this.id, required this.title, required this.images})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail_category', arguments: {
          'id': id,
          'title': title,
        });
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(64, 0, 0, 0),
              blurRadius: 8,
              offset: Offset(0, 5),
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey,
          image: DecorationImage(
            image: NetworkImage(images),
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
        child: Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.transparent,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.1, 0.6],
            ),
          ),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
