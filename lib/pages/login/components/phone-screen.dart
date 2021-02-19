// 登录Container
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:xbt_app/pages/login/login.viewmodel.dart';

class PhoneScreen extends ViewModelWidget<LoginViewModel> {
  @override
  Widget build(BuildContext context, LoginViewModel model) {
    return Container(
      child: Column(
        children: <Widget>[
          headerSection(model),
          formSection(model),
        ],
      ),
    );
  }

  Widget headerSection(LoginViewModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            top: 50,
            left: 20,
          ),
          alignment: Alignment.centerLeft,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () => model.onBack(),
                child: Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    size: 30,
                  ),
                ),
              ),
              Text("登录/注册",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ),
        Padding(
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
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              bottom: 15,
            ),
            child: TextField(
              controller: model.phoneController,
              style: TextStyle(
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
            padding: EdgeInsets.only(),
            child: Text(
              "未注册手机号验证后会自动创建账号",
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 60),
            color: Colors.transparent,
            height: 50,
            width: double.infinity,
            child: FlatButton(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(5.0),
              ),
              onPressed: () {
                model.onSendVerifyCode();
              },
              color: Color(0xFFFDF4D0),
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
