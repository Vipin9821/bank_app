import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial());

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    yield SplashLoadingState();
    if (event is LoadBoardingEvent) {
      yield SplashLoadingState();
      try {
        //just for demontration
        await Future.delayed(Duration(seconds: 2));
        yield SplashLoadedState();
      } catch (e) {
        yield SplashErrorState();
      }
    }
  }
}
