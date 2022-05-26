import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabka_bazar/cubit/color_cubit.dart';

class SampleColor extends StatelessWidget {
  const SampleColor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cubit Sample",
      home: BlocProvider(
        create: (context) => ColorCubit(),
        child: const ColorView(),
      ),
    );
  }
}

class ColorView extends StatelessWidget {
  const ColorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorCubit, ColorState>(
      builder: (context, state) {
        if (state is ColorInitial) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(state.num),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.pink,
                    primary: Colors.white,
                  ),
                  child: const Text("Press"),
                  onPressed: () {
                    context.read<ColorCubit>().changeNum();
                  },
                ),
              ),
            ],
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
