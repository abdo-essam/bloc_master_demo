import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../blocs/counter/counter_bloc.dart';
import '../blocs/counter/counter_state.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterBloc, CounterState>(
      listener: (context, state) {
        if (state.count == 5) {
          _showAchievementSnackBar(context);
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            Text(
              '${state.count}',
              style: GoogleFonts.poppins(
                fontSize: 72,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            Text(
              'Current Count',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Theme.of(context).textTheme.bodyMedium?.color?.withOpacity(0.7),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showAchievementSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.celebration, color: Colors.white),
            const SizedBox(width: 10),
            Text(
              'Congratulations! You reached 5!',
              style: GoogleFonts.poppins(),
            ),
          ],
        ),
        backgroundColor: Colors.deepPurple,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}