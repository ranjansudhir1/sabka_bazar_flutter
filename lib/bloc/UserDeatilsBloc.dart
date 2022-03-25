import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabka_bazar/models/UserDetails.dart';
import 'package:sabka_bazar/repository/UserRepository.dart';
import 'package:sabka_bazar/services/ApiService.dart';

class UserDetailsBloc extends Bloc<UserEvent, UserState> {
  UserDetailsBloc() : super(const UserState());

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    try {
      await Future.delayed(const Duration(seconds: 1));

      final data = await APIWeb().load(UserRepository.getAll());

      yield UserState(users: data);
    } catch (ex) {
      yield FailureUser(ex.toString());
    }
  }
}

//event
abstract class UserEvent {}

class GetAllEvent extends UserEvent {
  GetAllEvent();
}

//state

class UserState {
  final List<UserDetails>? users;

  const UserState({this.users});

  factory UserState.initial() => const UserState();
}

class FailureUser extends UserState {
  String error;

  FailureUser(this.error);
}
