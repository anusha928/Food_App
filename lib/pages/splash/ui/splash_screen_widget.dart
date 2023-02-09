import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/pages/auth/signin/signinScreen.dart';
import 'package:food_app/pages/home/widgets/homepagewidget.dart';

import 'package:food_app/pages/splash/cubit/startup_cubit.dart';
import 'package:food_app/pages/splash/cubit/startup_state.dart';
import 'package:food_app/utils/dimension.dart';

import 'package:page_transition/page_transition.dart';

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({super.key});

  @override
  State<SplashScreenWidget> createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration:const Duration(seconds: 2))..forward();
    animation = CurvedAnimation(parent: _controller, curve: Curves.linear);
    
    context.read<StartupCubit>().fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<StartupCubit, StartupState>(
        listener: (context, state) {
          if (state is StartupSuccess) {
            Navigator.of(context).pushAndRemoveUntil(
                PageTransition(
                    child: HomePageWidget(), type: PageTransitionType.fade),
                (route) => false);
          }
        },
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ScaleTransition(
                scale: animation,
                child: Image.asset(
                  "assets/image/logo part 1.png",
                  width: Dimension.splashimage1height,
                ),
              ),
              Image.asset(
                "assets/image/logo part 2.png",
                width: Dimension.splashimage2height,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
