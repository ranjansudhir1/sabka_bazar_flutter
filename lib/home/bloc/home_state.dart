part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeLoadingState extends HomeState {
  @override
  List<Object> get props => [];
}

class HomeLoadedState extends HomeState {
  final List<UserDetails> listViewDate;

  const HomeLoadedState(this.listViewDate);

  @override
  List<Object?> get props => listViewDate;
}
