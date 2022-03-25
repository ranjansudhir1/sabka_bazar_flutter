import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sabka_bazar/models/UserDetails.dart';
import 'package:sabka_bazar/repository/UserRepository.dart';
import 'package:sabka_bazar/services/ApiService.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(ApiService of) : super(HomeLoadingState()) {
    on<LoadApiEvent>((event, emit) async {
      final List<UserDetails> list =
          await APIWeb().load(UserRepository.getAll());
      emit(HomeLoadedState(list));
    });
  }
}
