import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/counter/counter_bloc.dart';
import '../blocs/counter/counter_event.dart';
import 'counter_button.dart';

class CounterControls extends StatelessWidget {
  const CounterControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CounterButton(
          icon: Icons.remove,
          onPressed: () {
            context.read<CounterBloc>().add(DecrementCounter());
          },
        ),
        const SizedBox(width: 20),
        CounterButton(
          icon: Icons.add,
          onPressed: () {
            context.read<CounterBloc>().add(IncrementCounter());
          },
        ),
      ],
    );
  }
}
