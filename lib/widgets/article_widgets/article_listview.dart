import 'package:flutter/material.dart';

import '../../model/article.dart';
import '../../network/api_services.dart';
import 'article_item.dart';
class ArticleListview extends StatefulWidget {
 ArticleListview({super.key});

  @override
  State<ArticleListview> createState() => _ArticleListviewState();
}

class _ArticleListviewState extends State<ArticleListview> {
  List<Article>? x;

 ApiServices apiServices =ApiServices();

  @override
  Widget build(BuildContext context) {
    return x==null?SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())): SliverList.builder(

      itemBuilder: (context,index){
        return  ArticleItem(article: x![index],);
      },itemCount: x!.length,
    );

  }
  @override
  void initState() {
    getArticle();

    // TODO: implement initState
    super.initState();
  }
  getArticle()async{
    x = await apiServices.getNews();
    setState(() {

    });

  }
}
