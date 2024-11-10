import 'package:flutter/material.dart';
import 'package:nem_a_pato_app/component/dialog_info_game.dart';
import 'package:nem_a_pato_app/pages/select_game_mode_page.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(244, 253, 219, 23),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SelectGameModePage()),
          );
        },
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 4,
                      ),
                    ),
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        // Icon 1
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SelectGameModePage()),
                            );
                          },
                          icon: Image.asset(
                            "assets/images/nem_a_pato_logo.jpg",
                            height: 250,
                          ),
                        ),
                        // Spacing
                        const SizedBox(height: 20),
                        // Icon 2
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SelectGameModePage()),
                            );
                          },
                          icon: Image.asset(
                            "assets/images/nem_a_pato_duck.jpg", 
                            height: 250,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text (
                  "Versão 1.0.0"
                )
              ),
            ),
            const Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: DialogInfoGame(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

