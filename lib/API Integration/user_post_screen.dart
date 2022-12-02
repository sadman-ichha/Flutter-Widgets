import 'package:flutter/material.dart';
import 'package:flutter_pratice/API%20Integration/helper/posts_helper.dart';
import 'package:flutter_pratice/API%20Integration/model/posts.dart';

class UserPostScreen extends StatefulWidget {
  @override
  State<UserPostScreen> createState() => _UserPostScreenState();
}

class _UserPostScreenState extends State<UserPostScreen> {
  List<Posts>? post = [];

  getData() async {
    post = await PostHelper().getPosts();
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Http"),centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: post!.length,
          itemBuilder: (_, index) {
            return Card(elevation: 5,
              child: ListTile(
                title: Text(post![index].title.toString()),
              ),
            );
          }),
    );
  }
}
