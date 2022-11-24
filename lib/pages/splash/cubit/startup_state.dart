abstract class StartupState {}

class StartupLoading extends StartupState {}

class StartupSuccess extends StartupState {
  final bool isLogedin;
   final bool isfirsttime;
  

  StartupSuccess({required this.isLogedin, required this.isfirsttime  });
}
