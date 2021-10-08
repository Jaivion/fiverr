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
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Material(
                borderRadius: BorderRadius.circular(4),
                color: Colors.indigo[700],
                child: InkWell(
                  onTap: () => {},
                  child: Container(
                    height: 40,
                    width: 175,
                    alignment: Alignment.center,
                    child: const Text(
                      "Facebook",
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Material(
                borderRadius: BorderRadius.circular(4),
                color: Colors.indigoAccent[700],
                child: InkWell(
                  onTap: () => {},
                  child: Container(
                    height: 40,
                    width: 175,
                    alignment: Alignment.center,
                    child: const Text(
                      "Google",
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("or sign in with email",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Email or username",
              fillColor: Colors.green,
              //labelStyle: TextStyle(fontSize: 20, color: Colors.green),
              focusColor: Colors.green,
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green)),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                //filled: true,
                fillColor: Colors.green,
                label: Text("Password"),
                //labelText: 'Your',
                labelStyle: TextStyle(fontSize: 20),
                //isCollapsed: true,
                focusColor: Colors.green,
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54))),
          ),
          const SizedBox(
            height: 40,
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
                  "Continue",
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 16,
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(
                "Forgot Password",
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
