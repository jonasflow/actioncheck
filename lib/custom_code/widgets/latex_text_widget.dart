// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_math_fork/flutter_math.dart';

class LatexTextWidget extends StatefulWidget {
  const LatexTextWidget({
    super.key,
    this.width,
    this.height,
    required this.latexText,
    required this.fontColor,
    required this.fontSize,
  });

  final double? width;
  final double? height;
  final String latexText;
  final Color fontColor;
  final int fontSize;

  @override
  State<LatexTextWidget> createState() => _LatexTextWidgetState();
}

class _LatexTextWidgetState extends State<LatexTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Math.tex(
        widget.latexText,
        textStyle: TextStyle(
          fontSize: widget.fontSize.toDouble(),
          color: widget.fontColor,
        ),
      ),
    );
  }
}
