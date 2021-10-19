import 'package:flutter/material.dart';

class ManageRequests extends StatefulWidget {
  const ManageRequests({ Key? key }) : super(key: key);

  @override
  _ManageRequestsState createState() => _ManageRequestsState();
}

class _ManageRequestsState extends State<ManageRequests> {
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
          title: const Text("Manage Requests",style: TextStyle(color: Colors.black87),),
          backgroundColor: const Color(0xffffffff),
      ),
      body: Container(),
    );
  }
}