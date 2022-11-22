import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app/pages/auth/signin/signin_widget.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/bigtexts.dart';
import 'package:food_app/widgets/clickbutton.dart';
import 'package:food_app/widgets/inputfield.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';

class SignupWidget extends StatelessWidget {
  SignupWidget({super.key});

  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  TextEditingController _namecontroller = TextEditingController();
  bool _isloading = false;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return LoadingOverlay(
      isLoading: _isloading,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: Dimension.height17),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: Dimension.height48,
                  ),
                  Container(
                    height: Dimension.splashimage1height / 1.5,
                    alignment: Alignment.center,
                    child: Image(
                      image: AssetImage("assets/image/logo part 1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  InputField(
                    controller: _namecontroller,
                    hinttext: "Name",
                    icon: Icon(
                      Icons.person,
                      size: 19,
                      color: AppColors.yellowColor,
                    ),
                  ),
                  InputField(
                    controller: _emailcontroller,
                    hinttext: "Email",
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return "Email field can't be empty";
                      }
                      final _isvalid = EmailValidator.validate(val);
                      if (_isvalid) {
                        return null;
                      } else {
                        return "Enter valid email address";
                      }
                    },
                    icon: Icon(
                      Icons.email,
                      size: 19,
                      color: AppColors.mainColor,
                    ),
                  ),
                  InputField(
                    controller: _passwordcontroller,
                    hinttext: "Password",
                    obscureText: true,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return "Password field can't be empty";
                      } else if (val.length < 5) {
                        return "Password should be of atleast 6 characters";
                      } else {
                        return null;
                      }
                    },
                    icon: Icon(
                      Icons.remove_red_eye,
                      size: 19,
                      color: AppColors.mainColor,
                    ),
                  ),
                  SizedBox(
                    height: Dimension.height66,
                  ),
                  ClickButton(
                      text: BigTexts(
                        text: "Sign up",
                        size: Dimension.height22,
                        color: Colors.white,
                      ),
                      ontap: () {
                        if (_formkey.currentState!.validate()) {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignInWidget(),
                          ));
                        }
                      }),
                  SizedBox(
                    height: Dimension.height20,
                  ),
                  RichText(
                      text: TextSpan(
                          text: "Already have an accoount?",
                          style: TextStyle(
                              color: AppColors.mainblackColor,
                              fontSize: Dimension.height8 * 2),
                          children: [
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Get.back(),
                            text: " Sign in",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Dimension.height8 * 2,
                                color: AppColors.mainblackColor))
                      ]))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
