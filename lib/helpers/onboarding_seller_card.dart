import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellerCardScreen extends StatelessWidget {
  const SellerCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          const Text(
            "Work Your Way",
            style: TextStyle(
                fontSize: 20,
                fontFamily: "workSans",
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'You will bring the skill. We\'ll make earning easy.',
            softWrap: true,
            style: TextStyle(
              fontSize: 14,
              fontFamily: "workSans",
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("A Gig is bought",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: "workSans",
                              color: Colors.grey[400])),
                      Text("every",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: "workSans",
                            color: Colors.grey[400],
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "5 Sec",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "workSans",
                            color: Color(0xff1dbf73)),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Projects",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: "workSans",
                              color: Colors.grey[400])),
                      Text("completed",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: "workSans",
                            color: Colors.grey[400],
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "50M+",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "workSans",
                            color: Color(0xff1dbf73)),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Price range",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: "workSans",
                              color: Colors.grey[400])),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        "\$5-\$10K",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "workSans",
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1dbf73)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.assignment_outlined,
                  size: 40,
                  color: Colors.grey[200],
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                        "Create a Gig",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "workSans",
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                        "Offer your services to a goal audience and start earning more",
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "workSans",
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.mail_outline,
                  size: 40,
                  color: Colors.grey[200],
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                        "Deliver your work",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "workSans",
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                        "Use your built-in tools to communicate with your customers and deliver their orders.",
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "workSans",
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.task_outlined,
                  size: 40,
                  color: Colors.grey[200],
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                        "Get Paid",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "workSans",
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                        "Receive your payment once the order is complete. It's that simple ",
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "workSans",
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 60,
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
                      fontFamily: "workSans",
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 90,
          ),
        ],
      ),
    );
  }
}
