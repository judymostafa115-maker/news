import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/manager/app_cubit.dart';
import 'package:news/screens/home_screen.dart';

void main() {
runApp(NewsApp());
}
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=>AppCubit()..getArticle(category: "general"),
     child: MaterialApp(home: HomeScreen(),),
    ) ;
  }
}

