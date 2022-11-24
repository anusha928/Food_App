import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/pages/splash/cubit/startup_state.dart';

import '../../../common/sharedpref.dart';

class StartupCubit extends Cubit<StartupState> {
  StartupCubit() : super(StartupLoading());

  fetchData() async {
    emit(StartupLoading());
    await Future.delayed(Duration(seconds: 2));
    final String _userToken = await SharedPref.getUsertoken()??"";
    final _isfirsttime = await SharedPref.isFirstTime();

     emit(StartupSuccess(isLogedin: _userToken.isNotEmpty,
     isfirsttime: _isfirsttime
     ));
  }
}
