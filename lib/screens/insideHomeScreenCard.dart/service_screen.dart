import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
          ),
          actions: const [
            Icon(
              Icons.share,
              color: Colors.white,
              size: 28,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.favorite_outline,
              color: Colors.white,
              size: 28,
            ),
            SizedBox(
              width: 15,
            ),
          ],
          backgroundColor: Colors.transparent,
          //elevation: 1,
        ),
        body: SingleChildScrollView(
          // physics: const ScrollPhysics(),
          child: Container(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                Container(
                  height: size.height * 0.32,
                  width: size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image:
                          ExactAssetImage('assets/images/services/boycut.jpg'),
                      fit: BoxFit.cover,
                    ),
                    //color: Color(0xffffffff),
                    // borderRadius: BorderRadius.only(
                    //     topLeft: Radius.circular(10),
                    //     topRight: Radius.circular(10)),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  color: Colors.grey[100],
                  child: Row(children: [
                    CircleAvatar(
                      child: const Icon(
                        Icons.person_rounded,
                        size: 30,
                        color: Colors.blueGrey,
                      ),
                      backgroundColor: Colors.grey[200],
                      radius: 20.0,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "User",
                            style: TextStyle(
                                fontFamily: "Tofino",
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey[850]),
                          ),
                          Text(
                            "Top Rated Seller",
                            style: TextStyle(
                                fontFamily: "Tofino",
                                //fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey[500]),
                          ),
                        ]),
                    const Spacer(),
                    Icon(
                      Icons.expand_more_outlined,
                      color: Colors.grey[500],
                      size: 30,
                    ),
                    const SizedBox(
                      width: 15,
                    )
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(children: [
                    Text("Logo Design",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.blueGrey[850],
                          fontWeight: FontWeight.bold,
                        ))
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(children: [
                    Flexible(
                      child: Text(
                          "Hire a designer to create a logo for a new brande or give your existing logo a face lift",
                          //overflow: TextOverflow.clip,
                          softWrap: true,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blueGrey[800],
                            //fontWeight: FontWeight.bold,
                          )),
                    )
                  ]),
                ),
                const Divider(
                  height: 1,
                  thickness: 1,
                ),
                const ListTile(
                  title: Text("Delivery Days"),
                  trailing: Text(
                    "5 Days",
                  ),
                ),
                const ListTile(
                    title: Text("Document Formatting"),
                    trailing: Icon(
                      Icons.check,
                      size: 22,
                      color: Color(0xff1dbf73),
                    )),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Material(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color(0xff1dbf73),
                    child: InkWell(
                      onTap: () => {},
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 30,
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
                  ),
                ),
                const Divider(
                  height: 1,
                  thickness: 1,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(
                    children: [
                      const Text("401 Reviews",style: TextStyle(fontWeight: FontWeight.bold,),),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange[300],
                        size: 15,
                      ),
                      Text("5",
                          style: TextStyle(
                            color: Colors.orange[300],
                            fontWeight: FontWeight.bold,
                          )),
                      const Spacer(),
                      Icon(
                        Icons.expand_more_outlined,
                        color: Colors.grey[500],
                        size: 30,
                      )
                    ],
                  ),
                ),
                const Divider(
                  height: 1,
                  thickness: 1,
                ),
              ],
            ),
          ),
        ));
  }
}
