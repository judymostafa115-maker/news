import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/manager/app_cubit.dart';
import 'package:news/manager/article_state.dart';
import 'package:news/model/article.dart';
import 'package:news/widgets/article_shimmer.dart';
import 'package:news/widgets/article_widgets/article_item.dart';

import 'article_item.dart';
class ArticleListview extends StatelessWidget {
  const ArticleListview({super.key});

  @override
  Widget build(BuildContext context) {
    return     BlocBuilder<AppCubit,AppState>(builder: (context,AppState state){
      if(state is SuccessState){
        return SliverList.builder(

            itemBuilder: (context,index){
              return ArticleItem(article: state.articles[index]);
            },itemCount:state.articles.length
        );
      }
      else if(state is ErrorState){
       return SliverToBoxAdapter(child: Center(child: Text("Error is ${state.errorMessage}")));
      }
      else {
        return SliverToBoxAdapter(child: const Center(child:  ArticleShimmer()));
      }



    });

  }
}


