

import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/common/cubit/commomsatate.dart';
import 'package:food_app/pages/auth/signin/cubit/signincubit.dart';
import 'package:food_app/pages/auth/signup/signup_screen.dart';

import 'package:food_app/pages/home/widgets/homepagewidget.dart';
import 'package:food_app/widgets/smalltexts.dart';


import 'package:loading_overlay/loading_overlay.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/snackbar.dart';
import '../../../utils/colors.dart';
import '../../../utils/dimension.dart';
import '../../../widgets/bigtexts.dart';
import '../../../widgets/clickbutton.dart';
import '../../../widgets/inputfield.dart';

class SignInWidget extends StatefulWidget {
  SignInWidget({super.key});

  @override
  State<SignInWidget> createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  TextEditingController _emailcontroller = TextEditingController();

  TextEditingController _passwordcontroller = TextEditingController();

  bool _isloading = false;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  // var socialicons = ["f.png", "g.png"];
  @override
  Widget build(BuildContext context) {
    return LoadingOverlay(
      isLoading: _isloading,
      child: BlocListener<SigninCubit, CommonState>(
        listener: (context, state) {
          if (state is Commonloading) {
            setState(() {
              _isloading:
              true;
            });
          } else {
            setState(() {
              _isloading:
              false;
            });
          }
          if (state is Commonerror) {
            Snackabar.showSnackbar(context: context, message: state.message);
          } else if (state is Commonsuccess) {
            Snackabar.showSnackbar(
                context: context, message: "signedin successfully");
            Navigator.of(context).pushAndRemoveUntil(
                PageTransition(
                    child: HomePageWidget(), type: PageTransitionType.fade),
                (route) => false);
          }
        },
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
                    SizedBox(
                      height: Dimension.height20,
                    ),
                    BigTexts(
                      text: "Hello",
                      size: Dimension.height66 / 2,
                    ),
                    SizedBox(
                      height: Dimension.height10,
                    ),
                    SmallTexts(
                      text: "Sign into your account",
                      size: Dimension.height18,
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
                      height: Dimension.height20,
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: SmallTexts(
                          text: "Forgot your password?",
                          size: Dimension.height17,
                        )),
                    SizedBox(
                      height: Dimension.height48,
                    ),
                    ClickButton(
                        text: BigTexts(
                          text: "Sign in",
                          size: Dimension.height22,
                          color: Colors.white,
                        ),
                        ontap: () {
                           if (_formkey.currentState!.validate()) {
                                    context.read<SigninCubit>().SignIn(
                                        email: _emailcontroller.text,
                                        password: _passwordcontroller.text);
                                  }
                        }),
                    SizedBox(
                      height: Dimension.height20,
                    ),
                    RichText(
                        text: TextSpan(
                            text: "Don't have an accoount?",
                            style: TextStyle(
                                color: AppColors.mainblackColor,
                                fontSize: Dimension.height8 * 2),
                            children: [
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SignUpScreen(),
                                  ));
                                },
                              text: " Sign up",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimension.height8 * 2,
                                  color: AppColors.mainblackColor))
                        ])),
                    SizedBox(
                      height: Dimension.height20 / 5,
                    ),
                    SmallTexts(
                      text: "or",
                      size: Dimension.height17,
                    ),
                    SizedBox(
                      height: Dimension.height20 / 5,
                    ),
                    SmallTexts(
                      text: "Signin with",
                      color: AppColors.mainblackColor,
                    ),

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     IconButton(
                    //         iconSize: 40,
                    //         onPressed: () {},
                    //         icon: Icon(
                    //           Icons.facebook,
                    //           color: AppColors.mainColor,
                    //         ))
                    //   ],
                    // )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
