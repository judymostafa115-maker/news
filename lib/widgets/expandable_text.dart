import 'package:flutter/material.dart';
import 'package:news/styles.dart';
class ExpandableText extends StatefulWidget {
  const ExpandableText({super.key, required this.text});
  final String text;


  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          maxLines: isExpanded ? null : 1,
          overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
          style: AppStyles.textStyle30.copyWith(
            color: Colors.black
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Text(
            isExpanded ? "See less" : "See more",
            style: TextStyle(color: Colors.blue),
          ),
        )
      ],
    );
  }
}
