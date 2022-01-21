import 'package:coach_mark/components/rounded_button.dart';
import 'package:coach_mark/components/rounded_input_field.dart';
import 'package:coach_mark/components/rounded_password_field.dart';
import 'package:coach_mark/constants.dart';
import 'package:coach_mark/homepage.dart';
import 'package:coach_mark/pages/LoginPage/components/background.dart';
import 'package:coach_mark/components/text_field_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SvgPicture.asset('assets/icons/login.svg',
                height: size.height * 0.35),
            RoundedInputField(
              hintText: 'Your Email',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (String value) {},
            ),
            RoundedButton(
              text: 'LOGIN',
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an Account ?',
                  style: TextStyle(color: kPrimaryColor),
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
