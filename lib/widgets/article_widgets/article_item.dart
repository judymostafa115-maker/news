import 'package:flutter/material.dart';
import 'package:news/model/article.dart';
import 'package:shimmer/shimmer.dart';

import '../../styles.dart';
import '../expandable_text.dart';
class ArticleItem extends StatelessWidget {
  const ArticleItem({super.key,required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),


              ),


              child: Image.network(
                fit: BoxFit.fill,
                article.urlToImage??"https://images.pexels.com/photos/6610260/pexels-photo-6610260.jpeg",
                width: double.infinity,height:200 ,)),
          ExpandableText(
            text:article.title,
          ),


             ExpandableText(text:article.description ??"No Description" ,)


        ],
      ),
    );

  }
}
