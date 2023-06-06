import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuOptions extends StatelessWidget {
  const MenuOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse(
        'https://cuidadosinfantis.clintonnogueira.repl.co/index.html#op');
    return Scaffold(
      backgroundColor: const Color(0xFF0C2E8B),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Selecione uma Opção",
                textAlign: TextAlign.center,
                style: GoogleFonts.fredoka(
                  fontSize: 45,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 300,
            height: 100,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color.fromARGB(255, 212, 50, 28),
              ),
              child: TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16.0),
                  ),
                ),
                onPressed: () async {
                  await launchUrl(url);
                },
                child: Text(
                  "RISCO E\n PRENVENÇÃO",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.fredoka(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 50.0)),
          SizedBox(
            width: 300,
            height: 80,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0xFFF4BD18),
                border: Border.all(
                  width: 2,
                  color: const Color(0xFFF7CF5A),
                ),
              ),
              child: TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16.0),
                  ),
                ),
                onPressed: () => {context.go('/kitchen')},
                child: Text(
                  "JOGO",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.fredoka(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.9,
            child: Image.asset(
              'assets/images/home.png',
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
