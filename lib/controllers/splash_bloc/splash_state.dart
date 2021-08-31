part of 'splash_bloc.dart';

abstract class SplashState extends Equatable {
  const SplashState();
  
  @override
  List<Object> get props => [];
}

class SplashInitial extends SplashState {}


class SplashLoadedState extends SplashState {
  const SplashLoadedState();
}

class NotLoadedInState extends SplashState {
  const NotLoadedInState();
}

class SplashErrorState extends SplashState {
  const SplashErrorState();
}

class SplashLoadingState extends SplashState {
  const SplashLoadingState();
}
