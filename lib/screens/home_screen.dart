import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/manager/app_cubit.dart';
import 'package:news/model/category.dart';
import 'package:news/styles.dart';
import 'package:news/widgets/article_widgets/article_item.dart';
import 'package:news/widgets/article_widgets/article_listview.dart';
import 'package:news/widgets/category_item.dart';
import 'package:news/widgets/category_listview.dart';

import '../manager/article_state.dart';
import '../widgets/expandable_text.dart';
import 'package:news/widgets/expandable_text.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = "general";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("News App",style: AppStyles.textStyle30,),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: categoryListView()),
          SliverToBoxAdapter(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 15),
        child: BlocBuilder<AppCubit,AppState>(
          builder: (context,state){
            var cubit = context.read<AppCubit>();
            String title = cubit.currentCategory;

            if (state is CategoryChangedState){
              title = state.category;
            }
            return Text("$title News",style:AppStyles.textStyle30.copyWith(
                color: Colors.black
            ),);
    }


        ),
      ),),
          ArticleListview(),




        ],
      )

    );
  }
}//
