import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'color_state.dart';

class ColorCubit extends Cubit<ColorState> {
  ColorCubit() : super(const ColorInitial());

  void changeNum() async{
    await Future.delayed(Duration(seconds: 20));
    emit(const ColorFinal("2"));
  }
}
