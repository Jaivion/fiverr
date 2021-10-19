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
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: const Color(0xffffffff),
      ),
      body: Container(
        child: Column(
          children: [
            ListTile(
              title: const Text("Currency"),
              trailing: Text(
                "\$USD",
                style: TextStyle(color: Colors.green[400]),
              ),
            ),
            const Divider(
              height: 1,
              indent: 15,
              endIndent: 2,
            ),
            const ListTile(
              title: Text("PayPal single click"),
            ),
            const Divider(
              height: 1,
              indent: 15,
              endIndent: 2,
            ),
            const ListTile(
              title: Text("Personal balance"),
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
