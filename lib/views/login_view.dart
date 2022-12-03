import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.zero,
        child: Stack(
          children: [
            const Image(
              image: AssetImage('assets/images/BackgroundPattern.png'),
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(79, 0, 79, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    height: 159,
                  ),
                  Image(
                    image: AssetImage('assets/images/Logo.png'),
                  ),
                  SizedBox(
                    width: 300,
                    height: 84,
                  ),
                  InputField(
                    hintText: 'Username',
                  ),
                  SizedBox(
                    width: 300,
                    height: 13,
                  ),
                  InputField(
                    hintText: 'Password',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String? hintText;

  const InputField({super.key, this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 232,
      height: 32,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
        border: Border.all(
          color: const Color(0xff979797),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 14, 12, 0),
        child: TextFormField(
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontFamily: "AppleSDGothicNeo",
            fontStyle: FontStyle.normal,
            fontSize: 14.0,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontWeight: FontWeight.w300,
              fontFamily: "AppleSDGothicNeo",
              fontStyle: FontStyle.normal,
              fontSize: 14.0,
              color: Colors.grey,
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
