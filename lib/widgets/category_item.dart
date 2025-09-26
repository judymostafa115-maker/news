
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/manager/app_cubit.dart';

import '../model/category.dart';
import '../styles.dart';
class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.x});
  final category x;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        onTap:(){
         context.read<AppCubit>().getArticle(category: x.name);
        }
        ,
        child: CircleAvatar(
          radius: 60,
          backgroundImage: NetworkImage(x.image),
          child: Text(x.name,style: AppStyles.textStyle30,),
        ),
      ),
    );
  }
}//
