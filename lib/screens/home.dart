import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/counter_section.dart';
import '../widgets/theme_switch.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bloc Master Demo',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: const [ThemeSwitch()],
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).primaryColor.withOpacity(0.1),
              Theme.of(context).scaffoldBackgroundColor,
            ],
          ),
        ),
        child: const CounterSection(),
      ),
    );
  }
}