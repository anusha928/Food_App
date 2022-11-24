
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/pages/auth/signin/cubit/signincubit.dart';
import 'package:food_app/pages/auth/signin/signin_widget.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>SigninCubit(),
      child: SignInWidget(),
    );
  }
}
