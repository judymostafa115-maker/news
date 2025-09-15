
import 'package:flutter/material.dart';

import '../model/category.dart';
import '../styles.dart';
class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.x});
  final category x;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: CircleAvatar(
        radius: 40,
        backgroundImage: NetworkImage(x.image),
        child: Text(x.name,style: AppStyles.textStyle30,),
      ),
    );
  }
}
