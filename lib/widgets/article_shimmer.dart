import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ArticleShimmer extends StatelessWidget {
  const ArticleShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(), // 👈 يمنع الـ scroll جوه scroll
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: Container(
              height: 120,
              width: double.infinity,
              color: Colors.white,
            ),
          );
        },
      ),
    );
  }
}