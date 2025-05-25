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

  runApp(ItemList());
}

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

class ItemList extends StatelessWidget {
  const ItemList({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BasePage(
        child: ItemListMain(), // O conteúdo que você quer na página principal
      ),
    );
  }
}

class ItemListMain extends StatelessWidget {
  const ItemListMain({super.key});

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
                                  padding: EdgeInsets.only(top: 30),
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      height: 30,
                                      child: SizedBox(
                                        height: 30,
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                            width:
                                                MediaQuery.of(
                                                  context,
                                                ).size.width *
                                                0.85,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Recentes',
                                                  style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 25,
                                                  ),
                                                ),
                                                Container(
                                                  width: 70,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF333333),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Color(
                                                          0xFF333333,
                                                        ).withOpacity(0.03),
                                                        spreadRadius: 2,
                                                        blurRadius: 3,
                                                        offset: Offset(0, 3),
                                                      ),
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.all(
                                                          Radius.circular(10),
                                                        ),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'mais',
                                                      style:
                                                          GoogleFonts.poppins(
                                                            color: Color(
                                                              0xFFEFEFED,
                                                            ),
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 15,
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
                                                //Item
                                                Container(
                                                  width:
                                                      MediaQuery.of(
                                                        context,
                                                      ).size.width *
                                                      0.9,
                                                  height: 100,
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
                                                        height: 100,
                                                        child: Icon(
                                                          Icons
                                                              .headphones_rounded,
                                                          color: Color(
                                                            0xFF4A90E2,
                                                          ),
                                                          size: 70,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width:
                                                            MediaQuery.of(
                                                              context,
                                                            ).size.width *
                                                            0.6,
                                                        height: 100,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.symmetric(
                                                                vertical: 15,
                                                                horizontal: 15,
                                                              ),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Headphone',
                                                                style: GoogleFonts.poppins(
                                                                  color: Color(
                                                                    0xFF333333,
                                                                  ),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontSize: 20,
                                                                ),
                                                              ),
                                                              Text(
                                                                'Storage box - closet',
                                                                style: GoogleFonts.poppins(
                                                                  color: Color(
                                                                    0xFF333333,
                                                                  ),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontSize: 15,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                //Item
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 15,
                                                  ),
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(
                                                          context,
                                                        ).size.width *
                                                        0.9,
                                                    height: 100,
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
                                                          height: 100,
                                                          child: Icon(
                                                            Icons
                                                                .headphones_rounded,
                                                            color: Color(
                                                              0xFF4A90E2,
                                                            ),
                                                            size: 70,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width:
                                                              MediaQuery.of(
                                                                context,
                                                              ).size.width *
                                                              0.6,
                                                          height: 100,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.symmetric(
                                                                  vertical: 15,
                                                                  horizontal:
                                                                      15,
                                                                ),
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Headphone',
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
                                                                Text(
                                                                  'Storage box - closet',
                                                                  style: GoogleFonts.poppins(
                                                                    color: Color(
                                                                      0xFF333333,
                                                                    ),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontSize:
                                                                        15,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 15,
                                                  ),
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(
                                                          context,
                                                        ).size.width *
                                                        0.9,
                                                    height: 100,
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
                                                          height: 100,
                                                          child: Icon(
                                                            Icons
                                                                .headphones_rounded,
                                                            color: Color(
                                                              0xFF4A90E2,
                                                            ),
                                                            size: 70,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width:
                                                              MediaQuery.of(
                                                                context,
                                                              ).size.width *
                                                              0.6,
                                                          height: 100,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.symmetric(
                                                                  vertical: 15,
                                                                  horizontal:
                                                                      15,
                                                                ),
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Headphone',
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
                                                                Text(
                                                                  'Storage box - closet',
                                                                  style: GoogleFonts.poppins(
                                                                    color: Color(
                                                                      0xFF333333,
                                                                    ),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontSize:
                                                                        15,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 15,
                                                  ),
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(
                                                          context,
                                                        ).size.width *
                                                        0.9,
                                                    height: 100,
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
                                                          height: 100,
                                                          child: Icon(
                                                            Icons
                                                                .headphones_rounded,
                                                            color: Color(
                                                              0xFF4A90E2,
                                                            ),
                                                            size: 70,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width:
                                                              MediaQuery.of(
                                                                context,
                                                              ).size.width *
                                                              0.6,
                                                          height: 100,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.symmetric(
                                                                  vertical: 15,
                                                                  horizontal:
                                                                      15,
                                                                ),
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Headphone',
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
                                                                Text(
                                                                  'Storage box - closet',
                                                                  style: GoogleFonts.poppins(
                                                                    color: Color(
                                                                      0xFF333333,
                                                                    ),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontSize:
                                                                        15,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 15,
                                                  ),
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(
                                                          context,
                                                        ).size.width *
                                                        0.9,
                                                    height: 100,
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
                                                          height: 100,
                                                          child: Icon(
                                                            Icons
                                                                .headphones_rounded,
                                                            color: Color(
                                                              0xFF4A90E2,
                                                            ),
                                                            size: 70,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width:
                                                              MediaQuery.of(
                                                                context,
                                                              ).size.width *
                                                              0.6,
                                                          height: 100,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.symmetric(
                                                                  vertical: 15,
                                                                  horizontal:
                                                                      15,
                                                                ),
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Headphone',
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
                                                                Text(
                                                                  'Storage box - closet',
                                                                  style: GoogleFonts.poppins(
                                                                    color: Color(
                                                                      0xFF333333,
                                                                    ),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontSize:
                                                                        15,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 15,
                                                  ),
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(
                                                          context,
                                                        ).size.width *
                                                        0.9,
                                                    height: 100,
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
                                                          height: 100,
                                                          child: Icon(
                                                            Icons
                                                                .headphones_rounded,
                                                            color: Color(
                                                              0xFF4A90E2,
                                                            ),
                                                            size: 70,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width:
                                                              MediaQuery.of(
                                                                context,
                                                              ).size.width *
                                                              0.6,
                                                          height: 100,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.symmetric(
                                                                  vertical: 15,
                                                                  horizontal:
                                                                      15,
                                                                ),
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Headphone',
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
                                                                Text(
                                                                  'Storage box - closet',
                                                                  style: GoogleFonts.poppins(
                                                                    color: Color(
                                                                      0xFF333333,
                                                                    ),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontSize:
                                                                        15,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 15,
                                                  ),
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(
                                                          context,
                                                        ).size.width *
                                                        0.9,
                                                    height: 100,
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
                                                          height: 100,
                                                          child: Icon(
                                                            Icons
                                                                .headphones_rounded,
                                                            color: Color(
                                                              0xFF4A90E2,
                                                            ),
                                                            size: 70,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width:
                                                              MediaQuery.of(
                                                                context,
                                                              ).size.width *
                                                              0.6,
                                                          height: 100,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.symmetric(
                                                                  vertical: 15,
                                                                  horizontal:
                                                                      15,
                                                                ),
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Headphone',
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
                                                                Text(
                                                                  'Storage box - closet',
                                                                  style: GoogleFonts.poppins(
                                                                    color: Color(
                                                                      0xFF333333,
                                                                    ),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontSize:
                                                                        15,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
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
