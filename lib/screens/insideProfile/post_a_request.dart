import 'package:flutter/material.dart';

class PostRequest extends StatefulWidget {
  const PostRequest({ Key? key }) : super(key: key);

  @override
  _PostRequestState createState() => _PostRequestState();
}

class _PostRequestState extends State<PostRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.grey[850],
          ),
          title: const Text("Post a Request",style: TextStyle(color: Colors.black87),),
          backgroundColor: const Color(0xffffffff),
      ),
      body: Container(),
    );
  }
}