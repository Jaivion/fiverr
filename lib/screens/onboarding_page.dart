import 'package:fiverr/helpers/signin_helper.dart';
import 'package:fiverr/screens/bottomnav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:fiverr/helpers/routes.dart';
//import 'package:get/get.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  void _showSignin(BuildContext ctx) {
    showModalBottomSheet(
        isScrollControlled: true,
        elevation: 10,
        backgroundColor: Colors.white,
        context: ctx,
        builder: (ctx) => Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white54,
              alignment: Alignment.bottomCenter,
              //child: const Text('Breathe in... Breathe out...'),
              child: const SigninHelper(),
            ));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Material(
      child: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          //color: Colors.grey,
          image: DecorationImage(
            image:
                ExactAssetImage('assets/images/backgrounds/backgroundimg1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(children: [
          Positioned(
              bottom: 0,
              child: Container(
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          const Text(
                            "fiverr",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            ".",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.green[400]),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Freelance Services.",
                        style: TextStyle(
                            fontSize: 24,
                            //fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "On Demand.",
                        style: TextStyle(
                            fontSize: 24,
                            //fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: size.height * 0.19,
                          padding: const EdgeInsets.only(top: 35),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8))),
                        ),
                      ],
                    )
                  ],
                ),
              )),
          Positioned(
              left: 0,
              right: 0,
              bottom: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.bottomCenter,
                            height: 130,
                            width: size.width * 0.42,
                            decoration: const BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.black38,
                                    offset: Offset(1.0, 1.0),
                                    blurRadius: 2.0,
                                  ),
                                ],
                                image: DecorationImage(
                                  image: ExactAssetImage(
                                      'assets/images/backgrounds/features-v2-img1.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                //color: Colors.green,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: Container(
                              width: double.maxFinite,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8))),
                              child: Text(
                                "Become a Freelancer",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey[850]),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          //const Spacer(),
                          Container(
                            alignment: Alignment.bottomCenter,
                            height: 130,
                            width: size.width * 0.42,
                            decoration: const BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.black38,
                                    offset: Offset(1.0, 1.0),
                                    blurRadius: 2.0,
                                  ),
                                ],
                                image: DecorationImage(
                                  image: ExactAssetImage(
                                      'assets/images/backgrounds/features-v2-img2.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                //color: Colors.green,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: Container(
                              width: double.maxFinite,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8))),
                              child: Text(
                                "Join Our Community",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey[850]),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 5, left: 10, right: 10, bottom: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () => _showSignin(context),
                                child: const Text(
                                  "Sign In",
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 16),
                                )),
                            InkWell(
                              onTap: () => Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const BottomNav())),
                              //Get.to(BottomNav());

                              child: const Text(
                                "Skip",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 16),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ]),
      ),
    );
  }
}
