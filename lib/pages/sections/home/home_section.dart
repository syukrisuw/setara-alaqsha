import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:setara_alaqsha/utils/strutils/constants.dart';

class HomeSection extends StatelessWidget {
  double textSize = 40.0;

  TextStyle animatedTextStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.deepPurple);
  TextStyle nonAnimatedTextStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Color(0xFF3E3C3C));

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: opacityMaskColor,
              child: Image.asset("assets/images/hero-bg.jpg",
              color: const Color.fromRGBO(255, 255, 255, 0.5),
              colorBlendMode: BlendMode.modulate,),
            ),

          Positioned(
              bottom: 100,
              left: 100,
              child: Row(
                children: <Widget>[
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText("Silaturahim ", textStyle: animatedTextStyle),
                      TyperAnimatedText("Konsultasi ", textStyle: animatedTextStyle),
                      TyperAnimatedText("Pengajian ", textStyle: animatedTextStyle),
                      TyperAnimatedText("TK ", textStyle: animatedTextStyle),
                      TyperAnimatedText("Klinik ", textStyle: animatedTextStyle),
                    ],
                  ),
                  Text(" Untuk Jamaah", style: nonAnimatedTextStyle),
                ],
              )),
        ],
      ));
  }
}
