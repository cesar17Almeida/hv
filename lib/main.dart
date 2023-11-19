import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hv/ui/home/home_page_desktop.dart';
import 'package:hv/ui/home/home_page_mobile.dart';
import 'package:hv/ui/home/home_page_tablet.dart';
import 'package:hv/ui/theme/dark_mode_cubit.dart';
import 'package:hv/ui/theme/device_screen_cubit.dart';
import 'package:hv/ui/theme/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        BlocProvider(
            create: (_) => DarkModeCubit()),
        BlocProvider(
          create: (_) => DeviceScreenCubit(),
        )
      ],
      child: BlocBuilder<DarkModeCubit, bool>
        (builder: (context, snapshot) {
        var width = MediaQuery
            .of(context)
            .size
            .width;
        var screenState = context.watch<DeviceScreenCubit>();

        if (width >= 1024) {
          context.read<DeviceScreenCubit>().onDesktopScreen();
        } else if (width < 1024 && width >= 600) {
          context.read<DeviceScreenCubit>().onTabletScreen();
        } else {
          context.read<DeviceScreenCubit>().onMobileScreen();
        }

        return MaterialApp(
          title: 'Calmeida',
          debugShowCheckedModeBanner: false,
          debugShowMaterialGrid: false,
          navigatorKey: _navigatorKey,
          theme: snapshot ? Themes.themeDark : Themes.themeLight,
          home:
          screenState.state == DeviceScreenState.mobile ? const HomePageMobile()
              : screenState.state == DeviceScreenState.tablet
              ? const HomePageTablet()
              :
          screenState.state == DeviceScreenState.desktop
              ? const HomePageDesktop()
              :
          const HomePageDesktop()
          ,
        );
      },),
    );
  }
}
