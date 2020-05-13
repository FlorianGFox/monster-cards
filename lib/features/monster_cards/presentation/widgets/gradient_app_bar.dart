import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget {
  final String title;
  final TextStyle textStyle;
  final List<Color> gradientColors;
  final FractionalOffset begin;
  final FractionalOffset end;
  final stops;

  GradientAppBar({
    this.title,
    this.textStyle = const TextStyle(
      color: Colors.white70,
      fontWeight: FontWeight.w600,
      fontSize: 36.0,
    ),
    this.gradientColors = const [
      Color(0xFF1D181F),
      Color(0xFF405159),
    ],
    this.begin = const FractionalOffset(0.0, 0.0),
    this.end = const FractionalOffset(1.0, 0.0),
    this.stops = const [0.0, 0.9],
  });

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double barHeight = 66.0;

    return new Container(
      height: barHeight + statusBarHeight,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: gradientColors,
          begin: begin,
          end: end,
          stops: stops,
          tileMode: TileMode.clamp,
        ),
      ),
      child: Container(
        padding: new EdgeInsets.only(top: statusBarHeight),
        child: Center(
          child: Text(
            title,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
