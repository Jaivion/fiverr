import 'package:flutter/material.dart';

class BuyerCardScreen extends StatelessWidget {
  const BuyerCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Container(
            height: 100,
            color: Colors.white,
          ),
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Text(
                    "Choose the best services that best suit what you are interested",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.blueGrey[850]),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Text(
                    "Select at least one.",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height:10),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GridView.count(
                shrinkWrap: true,
                  //physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                  children: List.generate(20, (index) {
                    return Container(
                      height: 140,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        boxShadow: const <BoxShadow>[
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(1.0, 1.0),
                            blurRadius: 2.0,
                          ),
                        ],
                      ),
                    );
                  })),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: BoxDecoration(
              // color: Colors.blue,
              border: Border(
                  top: BorderSide(width: 1, color: Colors.grey.shade200)),
              //   boxShadow: [
              //    BoxShadow(color: Colors.black38, offset:  Offset(1.0, 1.0),),
              // ],
            ),
            child: Material(
              borderRadius: BorderRadius.circular(4),
              color: const Color(0xff1dbf73),
              child: InkWell(
                onTap: () => {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
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
            ),
          )
        ],
      ),
    );
  }
}
