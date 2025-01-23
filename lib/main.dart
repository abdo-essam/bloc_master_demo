import 'package:bloc_master_demo/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'blocs/counter/counter_bloc.dart';
import 'blocs/theme/theme_bloc.dart';
import 'blocs/theme/theme_state.dart';

void main() {
  runApp(const BlocMasterDemo());
}

class BlocMasterDemo extends StatelessWidget {
  const BlocMasterDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeBloc()),
        BlocProvider(create: (_) => CounterBloc()),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, themeState) {
          return MaterialApp(
            title: 'Bloc Master Demo',
            debugShowCheckedModeBanner: false,
            theme: _getThemeData(themeState.isDark),
            home: const HomePage(),
          );
        },
      ),
    );
  }

  ThemeData _getThemeData(bool isDark) {
    return isDark
        ? ThemeData.dark().copyWith(
      primaryColor: Colors.deepPurple,
      colorScheme: const ColorScheme.dark(
        primary: Colors.deepPurple,
        secondary: Colors.deepPurpleAccent,
      ),
      textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
    )
        : ThemeData.light().copyWith(
      primaryColor: Colors.deepPurple,
      colorScheme: const ColorScheme.light(
        primary: Colors.deepPurple,
        secondary: Colors.deepPurpleAccent,
      ),
      textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
    );
  }
}
