import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import 'data.dart';

@immutable
abstract class TodoState extends Equatable {
  @override
  List<Object> get props => [];
}

class TodoInitial extends TodoState {
}

class TodoLoaded extends TodoState {
  final List<Data> data;
  TodoLoaded({required this.data});
}

class TodoError extends TodoState {
  final String message;
  TodoError({required this.message});
}