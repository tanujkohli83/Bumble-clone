import 'package:bumble/Screens/account_making_screen/phone_verification_screen.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle Button = TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    );

    Color ButtonColor = Color.fromRGBO(21, 21, 21, 1);

    TextStyle HeadingText = TextStyle(
      fontFamily: 'EncodeSansCondensed',
      fontSize: 40,
      fontWeight: FontWeight.w900,
      color: Color.fromRGBO(242, 188, 39, 1),
    );

    return Scaffold(
      //backgroundColor: Color.fromRGBO(242, 188, 39, 1),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/image/other_image/background_imahe.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Bumble",
                style: TextStyle(
                  fontFamily: 'bumbleFont',
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(242, 188, 39, 1),
                ),
              ),
              const SizedBox(height: 30),
              Text("MAKE THE", style: HeadingText),
              Text("NEXT MOVE", style: HeadingText),
              const SizedBox(height: 300),
              SizedBox(
                width: 300,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {
                    debugPrint("Continue with Google");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PhoneVerificationScreen(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Icon(
                      //  Icons.,
                      //   size: 30,x`
                      //   color: Colors.white,
                      // ),
                      Image.asset(
                        "assets/image/icons/google_logo.png",
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(width: 20),
                      Text("Continue with Google", style: Button),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(backgroundColor: ButtonColor),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 300,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {
                    debugPrint("Continue with Facebook");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PhoneVerificationScreen(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.facebook_rounded,
                        size: 35,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 20),
                      Text("Continue with Facebook", style: Button),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(backgroundColor: Colors.blue),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 300,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {
                    debugPrint("Use cell phone number");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PhoneVerificationScreen(),
                      ),
                    );
                  },
                  child: Text("Use cell phone number", style: Button),
                  style: OutlinedButton.styleFrom(backgroundColor: ButtonColor),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                "By signing up, you agree to our Terms. See how we\nuse your data in our Privacy Policy.\nWe never post to Facebook.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
