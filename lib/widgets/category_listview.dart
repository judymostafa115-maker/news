import 'package:flutter/material.dart';

import '../model/category.dart';
import 'category_item.dart';
class categoryListView extends StatelessWidget {
  const categoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return CategoryItem(x: newsCategory[index]);
        },itemCount: newsCategory.length,
      ),
    );
  }
}
