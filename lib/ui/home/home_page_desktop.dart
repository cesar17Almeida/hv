import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hv/ui/theme/dark_mode_cubit.dart';

class HomePageDesktop extends StatefulWidget {
  const HomePageDesktop({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const HomePageDesktop());
  }

  @override
  State<HomePageDesktop> createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {
  @override
  Widget build(BuildContext context) {
    var themeState = context.watch<DarkModeCubit>();

    return Scaffold(
      body: Center(
        child: Switch(
          value: themeState.state,
          onChanged: (val) {
            context.read<DarkModeCubit>().onChangeTheme();
          },
        ),
      ),
    );
  }
}
