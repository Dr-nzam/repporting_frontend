import 'package:elec_repporting/core/button/elevate_button.dart';
import 'package:elec_repporting/core/constante.dart';
import 'package:elec_repporting/core/formulaire/form_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool ispass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          SingleChildScrollView(
            // padding: EdgeInsets.only(left: 15, right: 15),
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('${Constante.image}logo_elecit.png'),
                  Text(
                    "Salut, bienvenue ! ",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: const Color(0XFF066BB2),
                    ),
                  ),
                  Text(
                    "Re-bonjour, vous nous avez manqué !",
                    style: GoogleFonts.inter(
                        fontSize: 14, color: const Color(0XFF999EA1)),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: const Color(0XFF066BB2),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      FormWidget(
                          controller: emailController,
                          placeholder: "exemple@gmail.com",
                          prefixicon: const IconButton(
                            icon: Icon(
                              Icons.email,
                              // color: Colors.white24,
                            ),
                            onPressed: null,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Mot de passe",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: const Color(0XFF066BB2),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      FormWidget(
                        controller: passwordController,
                        placeholder: "password",
                        isPassword: ispass,
                        prefixicon: IconButton(
                            onPressed: null, icon: Icon(Icons.lock)),
                        suffixicon: IconButton(
                          onPressed: () {
                            setState(() {
                              ispass = !ispass;
                            });
                          },
                          icon: ispass == true
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "mot de passe oublié ?",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0XFFE11F34),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding:  EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevateButtonWidget(
                  text: "Login",
                ),
                Center(
                  child: SizedBox(
                    width: 250,
                    child: Text(
                      "@2024  ElecIT-IT-NETWORK AND DATA COLLECTION -NZAMBOU",
                      style: GoogleFonts.inter(
                          fontSize: 14, color: const Color(0xFF999EA1)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
