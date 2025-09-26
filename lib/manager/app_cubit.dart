import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/manager/article_state.dart';
import 'package:news/network/api_services.dart';

import '../model/article.dart';

class AppCubit extends Cubit<AppState>{
  ApiService apiServices =ApiService();
  List<Article>x=[];
  String currentCategory ="general";

  AppCubit():super(InitialState());
  getArticle({required String category})async{
    emit(LoadingState());
    try{
      x =await apiServices.getNews(category:category);
      emit(SuccessState(articles: x));
      emit(CategoryChangedState(category));
    }catch(e){
      print(e.toString());
      emit(ErrorState(errorMessage: e.toString()));
    }
  }


}