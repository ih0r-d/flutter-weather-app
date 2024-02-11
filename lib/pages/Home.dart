import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 1.5* kToolbarHeight, 30, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(3,-0.25),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration:  BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurple.shade500 // todo: replace to purple
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-3, -0.25),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurple.shade500
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -1.25),
                child: Container(
                  height: 300,
                  width: 600,
                  decoration:  BoxDecoration(
                      color: Colors.orange.shade300,
                  ),
                ),
              ),
              BackdropFilter(
                  filter: ImageFilter.blur(
                      sigmaX: 90,
                      sigmaY: 90
                  ),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.transparent
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
