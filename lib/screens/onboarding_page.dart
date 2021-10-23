import 'package:fiverr/helpers/onboarding_buyer_card.dart';
import 'package:fiverr/helpers/onboarding_seller_card.dart';
import 'package:fiverr/helpers/signin_helper.dart';
import 'package:fiverr/helpers/signup_helper.dart';
import 'package:fiverr/utils/custom_page_route.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fiverr/screens/bottomnav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  void _showBottomSheet(BuildContext ctx, int index) {
    int _currentBtmSheetIndex = index;
    const tabs = [
      SigninHelper(),
      SignupHelper(),
      BuyerCardScreen(),
      SellerCardScreen(),
    ];
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
              child: tabs[_currentBtmSheetIndex],
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
                          Text(
                            "fiverr",
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                  fontSize: 35,
                                  fontFamily: "workSans",
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            // style: TextStyle(
                            //     fontSize: 35,
                            //     fontFamily: "workSans",
                            //     color: Colors.white,
                            //     fontWeight: FontWeight.bold),
                          ),
                          // style: TextStyle(
                          //     fontSize: 35,
                          //     fontWeight: FontWeight.bold,
                          //     color: Colors.white),

                          Text(
                            ".",
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontSize: 35,
                                  fontFamily: "workSans",
                                  color: Colors.green[400],
                                  fontWeight: FontWeight.bold),
                            ),
                            // style: GoogleFonts.lato(
                            //   textStyle: TextStyle(
                            //       fontSize: 30,
                            //       fontWeight: FontWeight.bold,
                            //       fontFamily: "workSans",
                            //       color: Colors.green[400]),
                            // )
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
                            fontFamily: "workSans",
                            //fontFamily: "Futura",
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
                            fontFamily: "workSans",
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
              bottom: 2,
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
                          InkWell(
                            onTap: () =>
                                // Navigator.of(context).push(
                                //           CustomPageRoute(
                                //               child:  const BuyerCardScreen(),direction: AxisDirection.down),
                                //         ),
                                _showBottomSheet(context, 2),
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              height: 130,
                              width: size.width * 0.42,
                              decoration: const BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.black45,
                                      offset: Offset(2.0, 3.0),
                                      blurRadius: 3.0,
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
                                      fontFamily: "workSans",
                                      //fontFamily: "Futura",
                                      fontSize: 14,
                                      color: Colors.grey[850]),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          //const Spacer(),
                          InkWell(
                            splashColor: Colors.red,
                            onTap: () =>
                                // Navigator.of(context).push(
                                //           CustomPageRoute(
                                //               child:  const SellerCardScreen(),direction: AxisDirection.down),
                                //         ),
                                _showBottomSheet(context, 3),
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              height: 130,
                              width: size.width * 0.42,
                              decoration: const BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.black45,
                                      offset: Offset(2.0, 3.0),
                                      blurRadius: 3.0,
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
                                      fontFamily: "workSans",
                                      //fontFamily: "Futura",
                                      fontSize: 14,
                                      color: Colors.grey[850]),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 5, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SigninHelper()),
                                    ),
                                // Navigator.of(context).push(
                                //       CustomPageRoute(
                                //           child:  const SigninHelper(),direction: AxisDirection.down),
                                //     ),
                                //_showBottomSheet(context, 0),
                                child: const Text(
                                  "Sign In",
                                  style: TextStyle(
                                      fontFamily: "workSans",
                                      //fontFamily: "Futura",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                      fontSize: 16),
                                )),
                            TextButton(
                                onPressed: () => Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BottomNav())),
                                child: const Text(
                                  "Skip",
                                  style: TextStyle(
                                      fontFamily: "workSans",
                                      //fontFamily: "Futura",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                      fontSize: 16),
                                )),
                            // InkWell(
                            //   splashColor: Colors.grey,
                            // onTap: () => Navigator.pushReplacement(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const BottomNav())),
                            //Get.to(BottomNav());

                            //   child: const Text(
                            //     "Skip",
                            //     style: TextStyle(
                            //         fontFamily: "Futura",
                            //         fontWeight: FontWeight.bold,
                            //         color: Colors.green,
                            //         fontSize: 16),
                            //   ),
                            // )
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
