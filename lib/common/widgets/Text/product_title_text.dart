import 'package:flutter/material.dart';

class TproductTitleText extends StatelessWidget {
  const TproductTitleText({
    super.key,
    required this.title,
    this.smalSize = false,
    this.maxline = 2,
    this.textAlign = TextAlign.left,
  });
  final String title;
  final bool smalSize;
  final int maxline;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:
          smalSize
              ? Theme.of(context).textTheme.labelLarge
              : Theme.of(context).textTheme.labelSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxline,
      textAlign: textAlign,
    );
  }
}
