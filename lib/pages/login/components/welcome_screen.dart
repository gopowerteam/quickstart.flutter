import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:quickstart_flutter/animations/fade.animation.dart';
import 'package:quickstart_flutter/pages/login/login.viewmodel.dart';

class WelcomeScreen extends ViewModelWidget<LoginViewModel> {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, LoginViewModel viewModel) {
    final size = MediaQuery.of(context).size;
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          "assets/images/login-bg.jpg",
          fit: BoxFit.cover,
          gaplessPlayback: true,
        ),
        Container(
          width: size.width,
          height: size.height,
          color: Colors.black.withOpacity(0.5),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          margin: const EdgeInsets.symmetric(vertical: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                      2.4,
                      const Text(
                        "您好",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          letterSpacing: 0,
                        ),
                      )),
                  FadeAnimation(
                    2.6,
                    const Text(
                      "欢迎回来",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      viewModel.onStart();
                    },
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                      child: const Text(
                        "登录/注册",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20)
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
