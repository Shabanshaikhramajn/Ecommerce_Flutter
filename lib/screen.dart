import 'package:ecommerce/api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostPage extends StatelessWidget  {
  final PostController controller = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Posts")),
      body: controller.obx(
        (posts) => ListView.builder(
          itemCount: posts!.length,
          itemBuilder: (_, index) {
            return ListTile(
              title: Text(posts[index].title),
            );
          },
        ),
        onLoading: Center(child: CircularProgressIndicator()),
        onEmpty: Center(child: Text("No posts found")),
        onError: (error) => Center(child: Text(error!)),
      ),
    );
  }
}
