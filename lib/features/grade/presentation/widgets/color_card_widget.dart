import 'package:flutter/material.dart';

class ColorCard extends StatelessWidget {
  final Widget firstChild;
  final Widget secondChild;

  final Color firstColor;
  final Color secondColor;
  final Color shadowColor;

  final VoidCallback onTap;
  final bool crossFadeState;

  const ColorCard({
    Key key,
    this.firstChild,
    this.secondChild,
    this.firstColor,
    this.secondColor,
    this.shadowColor,
    this.crossFadeState,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: LinearGradient(
          colors: [
            secondColor,
            firstColor,
          ],
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 0.0),
            color: shadowColor,
            blurRadius: 7.0,
          )
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: firstColor,
          highlightColor: firstColor,
          borderRadius: BorderRadius.circular(10.0),
          onTap: onTap,
          child: AnimatedCrossFade(
            duration: Duration(milliseconds: 500),
            crossFadeState: crossFadeState ? CrossFadeState.showSecond : CrossFadeState.showFirst,
            firstChild: firstChild,
            secondChild: secondChild,
            layoutBuilder: (Widget topChild, Key topChildKey, Widget bottomChild, Key bottomChildKey) {
              return Stack(
                children: <Widget>[
                  Positioned(
                    key: bottomChildKey,
                    child: bottomChild,
                  ),
                  Positioned(
                    key: topChildKey,
                    child: topChild,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class GradeColorCard extends StatelessWidget {
  final Color firstColor;
  final Color secondColor;
  final Color shadowColor;

  final String frontText;
  final double frontNumber;
  final String backText1;
  final double backNumber1;
  final String backText2;
  final double backNumber2;

  final VoidCallback onTap;
  final bool crossFadeState;

  const GradeColorCard({
    Key key,
    this.frontText,
    this.frontNumber,
    this.backText1,
    this.backNumber1,
    this.backText2,
    this.backNumber2,
    this.firstColor,
    this.secondColor,
    this.shadowColor,
    this.crossFadeState,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColorCard(
      firstColor: firstColor,
      secondColor: secondColor,
      shadowColor: shadowColor,
      crossFadeState: crossFadeState,
      onTap: onTap,
      firstChild: Row(
        children: <Widget>[
          Expanded(child: _column(frontText, frontNumber.toStringAsFixed(2), 22)),
        ],
      ),
      secondChild: Row(
        children: <Widget>[
          Expanded(child: _column(backText1, backNumber1.toStringAsFixed(1), 20)),
          _vDivider(),
          Expanded(child: _column(backText2, backNumber2.toStringAsFixed(1), 20)),
        ],
      ),
    );
  }

  Widget _column(String text, String number, double size) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          text,
          maxLines: 1,
          style: TextStyle(
            fontSize: size - 7,
            color: Colors.white70,
          ),
        ),
        Text(
          number,
          maxLines: 1,
          style: TextStyle(
            fontSize: size,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _vDivider() {
    return Container(
      color: Colors.white70,
      height: 30.0,
      width: 0.5,
    );
  }
}
