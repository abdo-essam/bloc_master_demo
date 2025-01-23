import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'counter_controls.dart';
import 'counter_display.dart';

class CounterSection extends StatelessWidget {
  const CounterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          width: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CounterDisplay(),
              const SizedBox(height: 30),
              const CounterControls(),
              const SizedBox(height: 20),
              Text(
                'Try reaching 5!',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}