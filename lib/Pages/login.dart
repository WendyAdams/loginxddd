import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginxddd/Widgets/superior.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff172437),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Header(),
                  Positioned(
                      top: 40,
                      left: 20,
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white)),
                          child: Icon(Icons.arrow_back_ios_outlined,
                              size: 22, color: Colors.grey[700]),
                        ),
                      )),
                  Positioned(
                      top: 60,
                      right: 80,
                      child: Icon(Icons.trip_origin,
                          color: Colors.white38, size: 35)),
                  Positioned(
                      top: 120,
                      left: 90,
                      child: Icon(Icons.trip_origin,
                          color: Colors.white38, size: 35)),
                  Positioned(
                      left: MediaQuery.of(context).size.width * 0.35,
                      top: 130,
                      child: Text('Recetario',
                          style: GoogleFonts.getFont('Inter',
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold))),
                  Positioned(
                      left: MediaQuery.of(context).size.width * 0.34,
                      top: 170,
                      child: Text('Comienza a cocinar! :)',
                          style: GoogleFonts.getFont('Inter',
                              color: Colors.white, fontSize: 17))),
                ],
              ),
              _TextFieldCustom(hint: 'Ingresa tu Email', isPassword: false),
              SizedBox(height: 40),
              _TextFieldCustom(hint: 'Contraseña', isPassword: true),
              SizedBox(height: 10),
              Text('¿Olvidaste tu contraseña?',
                  style: GoogleFonts.getFont('Inter',
                      color: Colors.grey, fontSize: 15)),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xffEAEFF5),
                      borderRadius: BorderRadius.circular(7.0)),
                  child: Center(
                      child: Text('Inicia sesión',
                          style: GoogleFonts.getFont('Inter',
                              color: Colors.grey[700], fontSize: 17))),
                ),
              ),
              SizedBox(height: 10),
              Text('O',
                  style: GoogleFonts.getFont('Inter',
                      color: Colors.grey, fontSize: 15)),
              SizedBox(height: 10),
              Text('Conectar con',
                  style: GoogleFonts.getFont('Inter',
                      color: Colors.grey, fontSize: 15)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.google, color: Colors.white),
                  SizedBox(width: 10),
                  Container(width: 2, color: Colors.white, height: 20),
                  SizedBox(width: 10),
                  Icon(FontAwesomeIcons.facebook, color: Colors.white),
                ],
              ),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('¿No tienes una cuenta? ',
                      style: GoogleFonts.getFont('Inter',
                          color: Colors.grey, fontSize: 15)),
                  GestureDetector(
                      onTap: () => Navigator.of(context).pushNamed('creanueva'),
                      child: Text('Regístrate ahora',
                          style: GoogleFonts.getFont('Inter',
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)))
                ],
              )
            ],
          ),
        ));
  }
}

class _TextFieldCustom extends StatelessWidget {
  final String hint;
  final bool isPassword;

  const _TextFieldCustom({required this.hint, required this.isPassword});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: TextField(
          textAlign: TextAlign.center,
          obscureText: isPassword,
          style: TextStyle(color: Colors.white, fontSize: 18),
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            labelStyle: TextStyle(color: Colors.white),
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey),
          )),
    );
  }
}
