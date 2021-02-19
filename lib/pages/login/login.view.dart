// View
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:stacked/stacked.dart';
import 'package:xbt_app/animations/fade.animation.dart';
import 'package:xbt_app/pages/login/components/phone-screen.dart';
import 'package:xbt_app/pages/login/components/verify-screen.dart';
import 'package:xbt_app/pages/login/components/welcome-screen.dart';
import 'login.viewmodel.dart';

class LoginView extends ViewModelBuilderWidget<LoginViewModel> {
  @override
  bool get reactive => true;

  @override
  bool get createNewModelOnInsert => false;

  @override
  bool get disposeViewModel => true;

  @override
  LoginViewModel viewModelBuilder(BuildContext context) => LoginViewModel();

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel model,
    Widget child,
  ) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: PageView(
          scrollDirection: Axis.vertical,
          controller: model.pageController,
          pageSnapping: false,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            WelcomeScreen(),
            PhoneScreen(),
            VerifyScreen(),
          ],
        ));
  }

  // @override
  // Widget builder(
  //   BuildContext context,
  //   LoginViewModel model,
  //   Widget child,
  // ) {
  //   return Scaffold(
  //       resizeToAvoidBottomPadding: false,
  //       body: Container(
  //         constraints: BoxConstraints.expand(),
  //         decoration: BoxDecoration(
  //             gradient: LinearGradient(
  //                 colors: [Color(0xFFfbab66), Color(0xFFf7418c)],
  //                 begin: Alignment.topCenter,
  //                 end: Alignment.bottomCenter)),
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: <Widget>[
  //             LoginContainerSection(),
  //             RegisterContainerSection()
  //           ],
  //         ),
  //       ));
  // }
}

// // 登录Container
// class LoginContainerSection extends ViewModelWidget<LoginViewModel> {
//   @override
//   Widget build(BuildContext context, LoginViewModel model) {
//     return Container(
//       constraints: BoxConstraints(minWidth: 320, maxWidth: 320, minHeight: 350),
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.all(Radius.circular(10))),
//       child: Padding(
//         padding: EdgeInsets.all(15),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Padding(
//                 padding: EdgeInsets.only(bottom: 20),
//                 child: Text(
//                   "登录",
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
//                 )),
//             LoginFormSection(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // 登录Container
// class LoginFormSection extends ViewModelWidget<LoginViewModel> {
//   final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

//   @override
//   Widget build(BuildContext context, LoginViewModel model) {
//     return Column(children: <Widget>[
//       FormBuilder(
//           key: formKey,
//           initialValue: {
//             'date': DateTime.now(),
//             'accept_terms': false,
//           },
//           autovalidate: true,
//           child: Column(
//             children: <Widget>[
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//                 child: FormBuilderTextField(
//                   maxLines: 1,
//                   attribute: "username",
//                   decoration: InputDecoration(
//                       filled: true,
//                       fillColor: Colors.grey.withOpacity(0.1),
//                       contentPadding: EdgeInsets.all(10),
//                       labelText: "用户名",
//                       border: OutlineInputBorder(
//                         gapPadding: 10,
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(5), //边角为30
//                         ),
//                         borderSide: BorderSide(
//                           color: Colors.grey, //边线颜色为黄色
//                           width: 1, //边线宽度为2
//                         ),
//                       )),
//                   validators: [
//                     FormBuilderValidators.required(errorText: "请输入用户名"),
//                   ],
//                 ),
//               ),
//               Padding(
//                   padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//                   child: FormBuilderTextField(
//                     obscureText: true,
//                     maxLines: 1,
//                     attribute: "password",
//                     decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.grey.withOpacity(0.1),
//                         contentPadding: EdgeInsets.all(10),
//                         labelText: "密码",
//                         border: OutlineInputBorder(
//                           /*边角*/
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(5), //边角为30
//                           ),
//                           borderSide: BorderSide(
//                             color: Colors.grey, //边线颜色为黄色
//                             width: 1, //边线宽度为2
//                           ),
//                         )),
//                     validators: [
//                       FormBuilderValidators.required(errorText: "请输入密码")
//                     ],
//                   )),
//               Container(
//                   padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
//                   alignment: Alignment.centerRight,
//                   child: GestureDetector(
//                     onTap: () {},
//                     child: Text("��记密码?"),
//                   )),
//               RaisedButton(
//                   onPressed: () {
//                     if (formKey.currentState.saveAndValidate()) {
//                       model.onSubmit(formKey.currentState.value, context);
//                     }
//                   },
//                   padding: EdgeInsets.all(0),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(80.0)),
//                   child: Ink(
//                       child: Container(
//                           alignment: Alignment.center,
//                           constraints:
//                               BoxConstraints(minWidth: 300.0, minHeight: 50.0),
//                           child: Text(
//                             "登录",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 18,
//                                 letterSpacing: 5),
//                           ),
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(30.0),
//                               gradient: LinearGradient(
//                                   colors: [
//                                     Color(0xFFfbab66),
//                                     Color(0xFFf7418c)
//                                   ],
//                                   begin: Alignment.topCenter,
//                                   end: Alignment.bottomCenter)))))
//             ],
//           ))
//     ]);
//   }
// }

// // 注册Container
// class RegisterContainerSection extends ViewModelWidget<LoginViewModel> {
//   @override
//   Widget build(BuildContext context, LoginViewModel model) {
//     return Container(
//       constraints: BoxConstraints(minWidth: 250, minHeight: 50),
//       decoration: BoxDecoration(
//           color: Colors.white.withOpacity(0.8),
//           borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(10),
//               bottomRight: Radius.circular(10))),
//       child: Container(
//         constraints: BoxConstraints.loose(Size.fromWidth(250)),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text("还没有账号?", style: TextStyle(color: Colors.blueGrey)),
//             GestureDetector(
//               onTap: () => {Modular.to.pushNamed('/register')},
//               child: Text('注册'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
