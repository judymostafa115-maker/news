import '../model/article.dart';
abstract class AppState{}
class InitialState extends AppState{

}
class LoadingState extends AppState{

}
class SuccessState extends AppState{
final List<Article> articles ;

  SuccessState({required this.articles});

}
class ErrorState extends AppState{
  final String errorMessage;

  ErrorState({required this.errorMessage});

}
class CategoryChangedState extends AppState {
  final String category;
  CategoryChangedState(this.category);
}

