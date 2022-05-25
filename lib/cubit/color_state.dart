part of 'color_cubit.dart';

abstract class ColorState extends Equatable {
  final String num;
  const ColorState(this.num);
  @override
  List<Object> get props => [];
}

class ColorInitial extends ColorState {
  const ColorInitial() : super("1");
}

class ColorFinal extends ColorState {
  final String finalNum;
  const ColorFinal(this.finalNum) : super(finalNum);
}