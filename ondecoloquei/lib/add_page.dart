// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'base_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Status bar and NavigationColor
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color(0xFF4A90E2),
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Color(0xFFEFEFED),
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(AddPage());
}

//Remove animação de scroll
class NoGlowScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }
}

class AddPage extends StatelessWidget {
  const AddPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BasePage(
        child: AddPageMain(), // O conteúdo que você quer na página principal
      ),
    );
  }
}

class AddPageMain extends StatelessWidget {
  const AddPageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF4A90E2),
      body: SafeArea(
        child: Stack(
          children: [
            // Conteúdo principal
            Padding(
              padding: EdgeInsets.only(top: 0),
              child: ScrollConfiguration(
                behavior: NoGlowScrollBehavior(),
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: BoxDecoration(
                      color: Color(0xFFEFEFED),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      children: [
                        SafeArea(
                          child: Stack(
                            children: [
                              // AppBar customizado no fundo
                              Container(
                                height: 125,
                                color: const Color(0xFF4A90E2),
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  bottom: 25,
                                ),
                                alignment: Alignment.centerLeft,
                                child: //Recentes Container
                                    Padding(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      height: 50,
                                      child: SizedBox(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                            width:
                                                MediaQuery.of(
                                                  context,
                                                ).size.width *
                                                0.85,
                                            height: 50,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Adicionar Item',
                                                  style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 25,
                                                  ),
                                                ),
                                                Builder(
                                                  builder:
                                                      (
                                                        context,
                                                      ) => GestureDetector(
                                                        onTap: () {},
                                                        child: Container(
                                                          width: 70,
                                                          height: 30,
                                                          decoration: BoxDecoration(
                                                            color: Color(
                                                              0xFF333333,
                                                            ),
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color: Color(
                                                                  0xFF333333,
                                                                ).withOpacity(
                                                                  0.03,
                                                                ),
                                                                spreadRadius: 2,
                                                                blurRadius: 3,
                                                                offset: Offset(
                                                                  0,
                                                                  3,
                                                                ),
                                                              ),
                                                            ],
                                                            borderRadius:
                                                                BorderRadius.all(
                                                                  Radius.circular(
                                                                    10,
                                                                  ),
                                                                ),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              'Salvar',
                                                              style: GoogleFonts.poppins(
                                                                color: Color(
                                                                  0xFFEFEFED,
                                                                ),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 15,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              //Body
                              Column(
                                children: [
                                  //Recents Item List
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 80,
                                      bottom: 90,
                                    ),
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: SizedBox(
                                        child: Column(
                                          children: [
                                            Column(
                                              children: [
                                                Container(
                                                  width:
                                                      MediaQuery.of(
                                                        context,
                                                      ).size.width *
                                                      0.9,
                                                  height: 300,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                          Radius.circular(30),
                                                        ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Color(
                                                          0xFF333333,
                                                        ).withOpacity(0.05),
                                                        spreadRadius: 2,
                                                        blurRadius: 4,
                                                        offset: Offset(0, 2),
                                                      ),
                                                    ],
                                                  ),
                                                  child: Padding(
                                                    padding: EdgeInsets.all(10),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            20,
                                                          ),
                                                      child: Image.asset(
                                                        'assets/img/images.jpeg',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                //Item
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 20,
                                                  ),
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(
                                                          context,
                                                        ).size.width *
                                                        0.9,
                                                    height: 115,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                            Radius.circular(30),
                                                          ),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Color(
                                                            0xFF333333,
                                                          ).withOpacity(0.05),
                                                          spreadRadius: 2,
                                                          blurRadius: 4,
                                                          offset: Offset(0, 2),
                                                        ),
                                                      ],
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        SizedBox(
                                                          width:
                                                              MediaQuery.of(
                                                                context,
                                                              ).size.width *
                                                              0.85,
                                                          height: 100,
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          10,
                                                                    ),
                                                                child: Text(
                                                                  'Nome do Objeto',
                                                                  style: GoogleFonts.poppins(
                                                                    color: Color(
                                                                      0xFF333333,
                                                                    ),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontSize:
                                                                        20,
                                                                  ),
                                                                ),
                                                              ),
                                                              TextField(
                                                                style: TextStyle(
                                                                  color: Color(
                                                                    0xFF333333,
                                                                  ),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontSize: 15,
                                                                ),
                                                                decoration: InputDecoration(
                                                                  hintText:
                                                                      'Digite aqui...',
                                                                  hintStyle: TextStyle(
                                                                    color:
                                                                        const Color.fromARGB(
                                                                          153,
                                                                          10,
                                                                          10,
                                                                          10,
                                                                        ),
                                                                  ),
                                                                  enabledBorder: OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                  ),
                                                                  focusedBorder: OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                          color:
                                                                              Colors.transparent,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
