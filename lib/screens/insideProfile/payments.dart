import 'package:flutter/material.dart';

class Payments extends StatefulWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  _PaymentsState createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.grey[850],
        ),
        title: const Text(
          "Payments",
          style: TextStyle(fontFamily: "workSans", color: Colors.black87),
        ),
        backgroundColor: const Color(0xffffffff),
      ),
      body: Container(
        child: Column(
          children: [
            ListTile(
              title: const Text(
                "Currency",
                style: TextStyle(
                  fontFamily: "workSans",
                ),
              ),
              trailing: Text(
                "\$USD",
                style:
                    TextStyle(fontFamily: "workSans", color: Colors.green[400]),
              ),
            ),
            const Divider(
              height: 1,
              indent: 15,
              endIndent: 2,
            ),
            const ListTile(
                title: Text(
              "PayPal single click",
              style: TextStyle(
                fontFamily: "workSans",
              ),
            )),
            const Divider(
              height: 1,
              indent: 15,
              endIndent: 2,
            ),
            ListTile(
              title: Text(
                "Personal balance",
                style:
                    TextStyle(fontSize: 18,fontFamily: "workSans", color: Colors.green[400]),
              ),
            ),
            const Divider(
              height: 1,
              indent: 15,
              endIndent: 2,
            ),
          ],
        ),
      ),
    );
  }
}
