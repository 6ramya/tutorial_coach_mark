import 'package:coach_mark/constants.dart';
import 'package:coach_mark/pages/LoginPage/login_page.dart';
import 'package:coach_mark/pages/welcomePage/components/background.dart';
import 'package:coach_mark/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Welcome!!!',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          SvgPicture.asset('assets/icons/chat.svg', height: size.height * 0.45),
          SizedBox(
            height: size.height * 0.05,
          ),
          RoundedButton(
            text: 'LOGIN',
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
          RoundedButton(
            text: 'Sign Up',
            color: kPrimaryLightColor,
            textColor: Colors.black,
            onPress: () {},
          )
        ]),
      ),
    );
  }
}
