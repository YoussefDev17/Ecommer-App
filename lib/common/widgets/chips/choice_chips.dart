import 'package:e_commerce_customer_app_new/common/widgets/Custom_Shape/Container/Circular_Container.dart';
import 'package:e_commerce_customer_app_new/utils/helpers/exports.dart';
import 'package:flutter/material.dart';

class TchoiceChip extends StatelessWidget {
  const TchoiceChip({
    super.key,
    required this.selected,
    this.onselected,
    required this.text,
  });

  final bool selected;
  final void Function(bool)? onselected;
  final String text;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        onSelected: onselected,
        selected: selected,
        shape: isColor ? CircleBorder() : null, // make it round
        avatar:
            isColor
                ? TCircularContainer(
                  width: 50,
                  height: 50,
                  backgroundColor: THelperFunctions.getColor(text)!,
                )
                : null,
        labelPadding: isColor ? EdgeInsets.all(0) : null,
        padding: isColor ? EdgeInsets.all(0) : null,
        selectedColor:
            isColor
                ? THelperFunctions.getColor(text)!
                : Colors.black.withOpacity(0.1),
        backgroundColor: isColor ? THelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
