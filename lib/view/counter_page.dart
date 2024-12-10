import 'package:flutter/material.dart';
import 'package:flutter_application_1/counter/cubit/counter_cubit.dart';
import 'package:flutter_application_1/view/counter_view.dart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  /// {@macro counter_page}
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MovieCubit()..fetchMovie(),
      child: const MovieView(),
    );
  }
}
