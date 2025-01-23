import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/theme/theme_bloc.dart';
import '../blocs/theme/theme_event.dart';
import '../blocs/theme/theme_state.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: IconButton(
            icon: Icon(
              state.isDark ? Icons.light_mode : Icons.dark_mode,
              color: state.isDark ? Colors.yellow : Colors.grey[800],
            ),
            onPressed: () {
              context.read<ThemeBloc>().add(ToggleTheme());
            },
          ),
        );
      },
    );
  }
}