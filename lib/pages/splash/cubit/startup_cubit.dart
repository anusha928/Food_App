import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/pages/splash/cubit/startup_state.dart';

class StartupCubit extends Cubit<StartupState> {
  StartupCubit() : super(StartupLoading());

  fetchData() async {
    emit(StartupLoading());
    await Future.delayed(Duration(seconds: 2));

    emit(StartupSuccess());
  }
}
