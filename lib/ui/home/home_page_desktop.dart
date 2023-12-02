import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hv/ui/theme/dark_mode_cubit.dart';
import 'package:hv/ui/widgets/list_services_cards_widget.dart';
import 'package:lottie/lottie.dart';

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
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Bienvenido", style: GoogleFonts.novaSquare(),),
            Row(
              children: [
                // Text("Descarga CV", style: GoogleFonts.novaSquare(),),
                ElevatedButton(
                    onPressed: (){},
                    child: Text('Descargar CV', style: GoogleFonts.novaSquare(color:Theme.of(context).colorScheme.tertiary ),)),
                const SizedBox(
                  width: 30,
                ),
                Text("Contacto", style: GoogleFonts.novaSquare(),),
                const SizedBox(
                  width: 30,
                ),
                Text("LinkedIn", style: GoogleFonts.novaSquare(),),
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
            ])),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Hola!, soy Cesar Almeida.",
                            style: GoogleFonts.novaSquare(fontSize: 15),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          // Text('</ Programador >', style: GoogleFonts.novaSquare(fontSize: 50)),
                          DefaultTextStyle(
                            style: GoogleFonts.novaSquare(
                                fontSize: 35,
                                color: Theme.of(context).colorScheme.tertiary),
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
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 100.0),
                            child: ListTile(
                              leading: CircleAvatar(
                                // backgroundColor: Theme.of(context).colorScheme.tertiary,
                                child: Image.asset('assets/logo.png'),
                              ),
                              trailing: const Text("2017 - 2022"),
                              title:
                                  const Text("Ingeniero de telecomunicaciones"),
                              subtitle: const Text("Universidad Santo Tomas"),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 100.0),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assets/platzi_logo.png'),
                                ),
                              ),
                              trailing: const Text('2023'),
                              title: const Text(
                                  'Advanced Serverless Framework AWS'),
                              subtitle: const Text('Platzi'),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 100.0),
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
                    Expanded(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 90,
                            child: Image.asset('assets/me_2.png', scale: 1.2, fit: BoxFit.contain,),
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(
                                backgroundColor: Theme.of(context).colorScheme.tertiary,
                                radius: 14,
                                child: Icon(Icons.email, size: 15,),
                              ),
                              SizedBox(width: 10,),
                              CircleAvatar(
                                radius: 14,
                                backgroundColor: Theme.of(context).colorScheme.tertiary,
                                child: Icon(Icons.message, size: 15,),
                              )
                            ],
                          ),
                          // Text("Experiencia Laboral", style: GoogleFonts.novaSquare(),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 100.0),
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Image.asset('assets/hadesys_logo.jpg'),
                                ),
                              ),
                              title: Text('Programador'),
                              subtitle: Text('HADESYS SAS'),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('Jun 2022 - Dic 2023'),
                                  Text('Bogotá, Colombia')
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 100.0),
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assets/inkco_logo.jpg'),
                                ),
                              ),
                              title: Text('Ingeniero Junior'),
                              subtitle: Text('INKCO SAS'),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('Feb 2020 - Jun 2022'),
                                  Text('Bucaramanga, Colombia')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 0.0, vertical: 20.0),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 0.4,
                      height: 240,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 5),
                      enlargeCenterPage: true,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      enableInfiniteScroll: true,
                    ),
                    items: [1, 2, 3, 4].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 0.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            child: listServicesCards(i),
                          );
                        },
                      );
                    }).toList(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
