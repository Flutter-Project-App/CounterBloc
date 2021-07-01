import 'package:flutter/material.dart';
import 'package:flutter_application/data/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/counter.dart';
import 'counter_view.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => CounterCubit(), child: CounterView(),);
  }
}
