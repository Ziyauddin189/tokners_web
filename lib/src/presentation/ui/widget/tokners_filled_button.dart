import 'package:fluttertokners/app.dart';
import 'package:fluttertokners/src/presentation/ui/widget/touch_effect.dart';
import 'package:flutter/material.dart';

/// Usage: Fill button
/// ToknersFilledButton(
///           'I am an existing ACT user',
///           onPressed: () {},
///         ),

/// Usage: Disable Button
/// ToknersFilledButton(
///            'Get OTP',
///            isDisable: isDisable,
///            onPressed: () {
///              setState(() {
///                isDisable = !isDisable;
///              });
///            },
///          ),
///
///
class ToknersFilledButton extends StatelessWidget {
  const ToknersFilledButton(
    this.buttonName, {
    Key? key,
    this.onPressed,
    this.isDisable,
    this.isLoading,
    this.child,
    this.isSmallSize = false, this.style
  }) : super(key: key);

  final Function()? onPressed;
  final String? buttonName;
  final bool? isDisable;
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
    const Widget loadingWidget = CircularProgressIndicator();

    Widget childWidget = textWidget;
    if (isLoading != null) {
      childWidget = loadingWidget;
    } else if (child != null) {
      childWidget = child!;
    }

    childWidget = Container(
      height: isSmallSize ? 36.0 : 48.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(52.0),
        color: Color(0xFF22A75D),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF22A75D).withOpacity(0.4),
            blurRadius: 25.0,
            offset: const Offset(0, 15),
          ),
        ],
      ),
      child: childWidget,
    );

    return isDisable == true
        ? childWidget
        : TouchEffect(
            onTap: (onPressed != null) ? onPressed : () {},
            child: childWidget,
          );
  }
}
