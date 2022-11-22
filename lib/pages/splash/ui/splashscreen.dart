
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/pages/splash/cubit/startup_cubit.dart';
import 'package:food_app/pages/splash/ui/splash_screen_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StartupCubit(),
      child: SplashScreenWidget(),
    );
  }
}
