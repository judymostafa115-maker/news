import 'package:dio/dio.dart';

import '../model/article.dart';

class ApiServices{
  Dio x =Dio();
  Future<List<Article>> getNews()async{
  Response response = await x.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=4574b83031ae4c26b2976bb5eca4c24b");
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
main()async{

  ApiServices apiServices =ApiServices();
  List<Article>x=await apiServices.getNews();

}