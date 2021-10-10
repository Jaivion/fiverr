import 'package:flutter/material.dart';

class SignupHelper extends StatelessWidget {
  const SignupHelper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          const Image(
              height: 60, image: AssetImage('assets/icons/Favicon.png')),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Join Fiverr",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Join our growing freelance community to offer your professional services, connect with customers, and get paid on Fiverr's trusted platform",
            softWrap: true,
            style: TextStyle(
              fontSize: 14,
              //fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Material(
            borderRadius: BorderRadius.circular(4),
            color: Colors.indigo[700],
            child: InkWell(
              onTap: () => {},
              child: Container(
                height: 40,
                width: double.maxFinite,
                alignment: Alignment.center,
                child: const Text(
                  "Continue with Facebook",
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Material(
            borderRadius: BorderRadius.circular(4),
            color: Colors.indigoAccent[700],
            child: InkWell(
              onTap: () => {},
              child: Container(
                height: 40,
                width: double.maxFinite,
                alignment: Alignment.center,
                child: const Text(
                  "Continue with Google",
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Material(
            borderRadius: BorderRadius.circular(4),
            color: const Color(0xff1dbf73),
            child: InkWell(
              onTap: () => {},
              child: Container(
                height: 40,
                width: double.maxFinite,
                alignment: Alignment.center,
                child: const Text(
                  "Sign Up with Email",
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "By joining you agree to Fiverr's ",
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
              Text(
                "Terms of Services",
                style: TextStyle(
                  color: Color(0xff1dbf73),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "Sign In",
                style: TextStyle(
                    color: Color(0xff1dbf73), fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
