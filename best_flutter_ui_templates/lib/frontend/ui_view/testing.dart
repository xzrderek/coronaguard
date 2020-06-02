import 'package:flutter/material.dart';
import '../coronaguard_app_theme.dart';

class TestingView extends StatelessWidget {
  final AnimationController animationController;
  final Animation animation;

  const TestingView({Key key, this.animationController, this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return FadeTransition(
          opacity: animation,
          child: new Transform(
            transform: new Matrix4.translationValues(
                0.0, 30 * (1.0 - animation.value), 0.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, top: 0, bottom: 0),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 16),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FintnessAppTheme.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                                topRight: Radius.circular(20.0)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: FintnessAppTheme.grey.withOpacity(0.4),
                                  offset: Offset(1.1, 1.1),
                                  blurRadius: 10.0),
                            ],
                          ),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                child: SizedBox(
                                  height: 74,
                                  child: AspectRatio(
                                    aspectRatio: 1.714,

                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 150,
                                          right: 16,
                                          top: 25,
                                        ),
                                        child: Text(
                                          "Find Testing Center",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontFamily:
                                                FintnessAppTheme.fontName,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            letterSpacing: 0.0,
                                            color:
                                                FintnessAppTheme.nearlyDarkBlue,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 100,
                                      bottom: 12,
                                      top: 4,
                                      right: 16,
                                    ),

                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 17,
                        left: 20,
                        child: SizedBox(
                          width: 70,
                          height: 70,
                          child: Image.asset("assets/fitness_app/hospita.png"),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
