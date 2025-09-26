
import 'package:dio/dio.dart';

import '../model/article.dart';
import 'dart:core';

class ApiService{
  Dio dio =Dio();
  Future<List<Article>> getNews({required String category})async{
  Response response = await dio.get(
      "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=4574b83031ae4c26b2976bb5eca4c24b"
  );

  Map<String,dynamic> json =response.data;
  List<Article> articles =[];
  for(var item in json["articles"]){
    articles.add(
      Article(title: item["title"], description:  item["description"], urlToImage:  item["urlToImage"], url:  item["url"])
    );

  }

  return articles;

  }
}
