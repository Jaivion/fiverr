import 'package:flutter/material.dart';
import 'app_colors.dart';

class BuyerCardScreen extends StatefulWidget {
  const BuyerCardScreen({Key? key}) : super(key: key);

  @override
  State<BuyerCardScreen> createState() => _BuyerCardScreenState();
}

class _BuyerCardScreenState extends State<BuyerCardScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 35,
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
                          fontFamily: "workSans",
                          color: Colors.blueGrey[850]),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Text(
                      "Select at least one.",
                      style: TextStyle(
                          fontFamily: "workSans", color: Colors.black54),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: GridView.count(
                    childAspectRatio: 1.5,
                    padding: const EdgeInsets.all(10.0),
                    shrinkWrap: true,
                    //physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 20.0,
                    children: List.generate(20, (index) {
                      return const ItemCard();
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
                      height: 35,
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
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatefulWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() {
        if (isSelected == false) {
          isSelected = true;
        } else {
          isSelected = false;
        }
      }),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(10),
          border: Border(
            left: BorderSide(
              color: isSelected ? Colors.green : Colors.grey.shade400,
              width: 1,
            ),
            top: BorderSide(
              color: isSelected ? Colors.green : Colors.grey.shade400,
              width: 1,
            ),
            right: BorderSide(
              color: isSelected ? Colors.green : Colors.grey.shade400,
              width: 1,
            ),
            bottom: BorderSide(
              color: isSelected ? Colors.green : Colors.grey.shade400,
              width: 1,
            ),
          ),
         
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: isSelected ? Colors.green : Colors.black26,
              blurRadius: 3.0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.face_outlined,size: 40,),
              ),
              Divider(
                height: 1,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Description"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
