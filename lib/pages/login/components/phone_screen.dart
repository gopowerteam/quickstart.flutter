// 登录Container
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:quickstart_flutter/pages/login/login.viewmodel.dart';

class PhoneScreen extends ViewModelWidget<LoginViewModel> {
  const PhoneScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, LoginViewModel viewModel) {
    return Column(
      children: <Widget>[
        headerSection(viewModel),
        formSection(viewModel),
      ],
    );
  }

  Widget headerSection(LoginViewModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
            top: 50,
            left: 20,
          ),
          alignment: Alignment.centerLeft,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () => model.onBack(),
                child: const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    size: 30,
                  ),
                ),
              ),
              const Text("登录/注册",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 50,
            left: 30,
          ),
          child: Text(
            "欢迎登录",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget formSection(LoginViewModel model) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              bottom: 15,
            ),
            child: TextField(
              controller: model.phoneController,
              style: const TextStyle(
                fontSize: 24.0,
                color: Colors.black,
              ),
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: '请输入手机号',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black.withOpacity(0.5)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(),
            child: Text(
              "未注册手机号验证后会自动创建账号",
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 60),
            color: Colors.transparent,
            height: 50,
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                model.onSendVerifyCode();
              },
              style: TextButton.styleFrom(
                  primary: const Color(0xFFFDF4D0),
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
              child: Text(
                "获取短信验证码",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 14.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
