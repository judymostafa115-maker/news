import 'package:flutter/material.dart';
import 'package:news/model/category.dart';
import 'package:news/styles.dart';
import 'package:news/widgets/article_widgets/article_item.dart';
import 'package:news/widgets/category_item.dart';
import 'package:news/widgets/category_listview.dart';

import '../widgets/expandable_text.dart';
import 'package:news/widgets/expandable_text.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("News App",style: AppStyles.textStyle30,),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            categoryListView(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("General News",style:AppStyles.textStyle30.copyWith(
                color: Colors.black
              ) ,),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index){
              return ArticleItem();
            },itemCount: 5,
            )







          ],
        ),
      ),
    );
  }
}
