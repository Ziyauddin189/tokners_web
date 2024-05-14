import 'package:fluttertokners/app.dart';
import 'package:fluttertokners/src/presentation/ui/widget/touch_effect.dart';
import 'package:flutter/material.dart';

/// Usage:
/// ToknersOutlineButton(
///           'Register for new connection',
///           onPressed: () {
///           },
///         )

class ToknersOutlineButton extends StatelessWidget {
  const ToknersOutlineButton(
    this.buttonName, {
    Key? key,
    this.onPressed,
    this.isLoading,
    this.child,
    this.isSmallSize = false, this.style
  }) : super(key: key);

  final Function()? onPressed;
  final String? buttonName;
  final bool? isLoading;
  final Widget? child;
  final bool isSmallSize;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final Widget textWidget = Text(
      buttonName ?? '',
      style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w700,
          fontFamily: FontFamily.centuryGothic
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
    const Widget loadingWidget = Center(child: CircularProgressIndicator());

    Widget childWidget = textWidget;
    if (isLoading != null) {
      childWidget = loadingWidget;
    } else if (child != null) {
      childWidget = child!;
    }
    return TouchEffect(
      onTap: onPressed,
      child: Container(
        height: isSmallSize ? 36.0: 48.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFF22A75D),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(52.0),

        ),
        child: childWidget,
      ),
    );
  }
}
