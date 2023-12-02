import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hv/ui/theme/dark_mode_cubit.dart';
import 'package:hv/ui/widgets/list_tile_widget.dart';


class HomePageTablet extends StatelessWidget {
  const HomePageTablet({super.key});

  @override
  Widget build(BuildContext context) {
    var themeState = context.watch<DarkModeCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Bienvenido"),
            Row(
              children: [
                const Text("Inicio"),
                const SizedBox(
                  width: 30,
                ),
                Text("Tecnologìas"),
                const SizedBox(
                  width: 30,
                ),
                Text("Proyectos"),
                const SizedBox(
                  width: 30,
                ),
                GestureDetector(
                    onTap: () {
                      context.read<DarkModeCubit>().onChangeTheme();
                    },
                    child: themeState.state
                        ? Icon(Icons.light_mode)
                        : Icon(Icons.dark_mode))
              ],
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.primary
                ])
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 120,
                  backgroundColor: Theme.of(context).colorScheme.tertiary,
                  child: const Icon(Icons.image_not_supported, size: 100,),
                ),
                  const SizedBox(height: 15,),
                  Text("Hola!, soy Cesar Almeida.", style: GoogleFonts.novaSquare(fontSize: 15),),
                  const SizedBox(height: 20,),
                  // Text('</ Programador >', style: GoogleFonts.novaSquare(fontSize: 50)),
                  DefaultTextStyle(
                    style: GoogleFonts.novaSquare(fontSize: 35, color: Theme.of(context).colorScheme.tertiary),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      pause: const Duration(seconds: 1),
                      animatedTexts: [
                        TypewriterAnimatedText('</ Programador >'),
                        TypewriterAnimatedText('Java'),
                        TypewriterAnimatedText('Python'),
                        TypewriterAnimatedText('Dart'),
                        TypewriterAnimatedText('Android / iOS'),
                        TypewriterAnimatedText('UI/UX Design'),
                      ],
                    ),

                  ),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100.0),
                    child: studiesListTile(
                        'Ingeniero de telecomunicaciones',
                        'Universidad Santo Tomas',
                        'assets/logo.png',
                        '2017 - 2022'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/platzi_logo.png'),
                        ),
                      ),
                      trailing: const Text('2023'),
                      title: const Text('Advanced Serverless Framework AWS'),
                      subtitle: const Text('Platzi'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/platzi_logo.png'),
                        ),
                      ),
                      trailing: const Text('2023'),
                      title: const Text('Java Spring Security'),
                      subtitle: const Text('Platzi'),
                    ),
                  ),
                ],
            ),
          ),
        ),
      ),
    );
  }
}
