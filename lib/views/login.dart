import 'package:dietosurelabs/controllers/login_controller.dart';
import 'package:dietosurelabs/widgets/common/custom_button.dart';
import 'package:dietosurelabs/widgets/common/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:dietosurelabs/app_config.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (context) {
      return Scaffold(
        backgroundColor: appColor.bgColor,
        body: SingleChildScrollView(
          child: Container(
            height: appScreenUtil.screenActualHeight(),
            width: appScreenUtil.screenActualWidth(),
            padding: EdgeInsets.symmetric(horizontal: appScreenUtil.size(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    width: appScreenUtil.size(120),
                    height: appScreenUtil.size(120),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(imageAssets.appLogo),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: appScreenUtil.size(90)),
                Form(
                  key: loginController.formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            appScreenUtil.size(10),
                          ),
                        ),
                        child: CustomTextFormField(
                          radius: 50,
                          container: loginController.txtEmail,
                          hintText: 'Email',
                          prefixIcon: Icon(MdiIcons.email),
                          obscureText: true, //changePasswordCtrl.isObscureText,
                          style: appCss.bodyStyle5
                              .copyWith(color: appColor.black22Color),
                          keyboardType: TextInputType.text,
                          padding: 22,
                        ),
                      ),
                      SizedBox(height: appScreenUtil.size(15)),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(appScreenUtil.size(10))),
                        child: CustomTextFormField(
                          radius: 50,
                          container: loginController.txtPassword,
                          // cursorColor: appColor.primaryColor,
                          hintText: 'Password',
                          prefixIcon: Icon(MdiIcons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(
                                loginController.isObscureText == true
                                    ? MdiIcons.eye
                                    : MdiIcons.eyeOff,
                                color: appColor.deactivateColor),
                            onPressed: () {
                              loginController.togglePassword();
                            },
                          ),
                          obscureText: loginController.isObscureText,
                          style: appCss.bodyStyle5
                              .copyWith(color: appColor.black22Color),
                          keyboardType: TextInputType.text,
                          padding: 22,
                        ),
                      ),
                      SizedBox(height: appScreenUtil.size(20)),
                      Padding(
                        padding: EdgeInsets.all(appScreenUtil.size(10)),
                        child: CustomButton(
                          padding: 22,
                          radius: 50,
                          title: 'Login',
                          style: appCss.h5.copyWith(color: appColor.whiteColor),
                          onTap: () {
                            loginController.login();
                          },
                        ),
                      ),
                      SizedBox(height: appScreenUtil.size(20)),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: appScreenUtil.size(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              child: Text(
                                'Signup',
                                style: appCss.bodyStyle6.copyWith(
                                    color: appColor.textSecondaryColor),
                              ),
                              onTap: () {},
                            ),
                            InkWell(
                              child: Text(
                                'Forgot Password',
                                style: appCss.bodyStyle6
                                    .copyWith(color: appColor.textPrimaryColor),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
