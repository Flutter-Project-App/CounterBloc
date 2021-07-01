import 'package:flutter/material.dart';
import 'package:flutter_application/data/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/counter.dart';

class CounterView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text('$state', style: textTheme.headline2,);
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
              key: const Key('counterView_increment_floatingActionButton'),
              backgroundColor: Colors.greenAccent,
              child: const Icon(Icons.add),
              onPressed: () => context.read<CounterCubit>().increment()),
          SizedBox(height: 10,),
          FloatingActionButton(
              key: const Key('counterView_decrement_floatingActionButton'),
              backgroundColor: Colors.redAccent,
              child: const Icon(Icons.remove),
              onPressed: () => context.read<CounterCubit>().decrement())
        ],
      ),
    );
  }
}
