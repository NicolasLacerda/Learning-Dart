// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'add_page.dart';
import 'item_list.dart';
import 'main.dart';

class BouncyIconButton extends StatefulWidget {
  final Icon icon;
  final VoidCallback onTap;

  const BouncyIconButton({super.key, required this.icon, required this.onTap});

  @override
  State<BouncyIconButton> createState() => _BouncyIconButtonState();
}

class _BouncyIconButtonState extends State<BouncyIconButton> {
  double _scale = 1.0;

  void _onTapDown(_) => setState(() => _scale = 0.6);
  void _onTapUp(_) {
    setState(() => _scale = 1.0);
    widget.onTap();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: () => setState(() => _scale = 1.0),
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
        child: widget.icon,
      ),
    );
  }
}

class BasePage extends StatelessWidget {
  final Widget child;

  const BasePage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF4A90E2),
      body: SafeArea(
        child: Stack(
          children: [
            child,
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.50,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BouncyIconButton(
                        icon: const Icon(
                          Icons.home_rounded,
                          color: Color(0xFF333333),
                          size: 30,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (_, __, ___) => MyApp(),
                              transitionDuration: Duration.zero,
                            ),
                          );
                        },
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF4A90E2),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: BouncyIconButton(
                            icon: const Icon(
                              Icons.add_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => AddPage(),
                                  transitionDuration: Duration.zero,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      BouncyIconButton(
                        icon: const Icon(
                          Icons.folder_rounded,
                          color: Color(0xFF333333),
                          size: 30,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (_, __, ___) => ItemList(),
                              transitionDuration: Duration.zero,
                            ),
                          );
                        },
                      ),
                    ],
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
