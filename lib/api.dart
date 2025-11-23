import 'package:ecommerce/model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PostController extends GetxController with StateMixin<List<Post>> {
  final String url = 'https://jsonplaceholder.typicode.com/posts';

  @override
  void onInit() {
    fetchPosts();
    super.onInit();
  }

  void fetchPosts() async {
    change(null, status: RxStatus.loading());

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final List data = json.decode(response.body);
        final List<Post> posts = data.map((json) => Post.fromJson(json)).toList();

        if (posts.isEmpty) {
          change([], status: RxStatus.empty());
        } else {
          change(posts, status: RxStatus.success());
        }
      } else {
        change(null, status: RxStatus.error("Server error: ${response.statusCode}"));
      }
    } catch (e) {
      change(null, status: RxStatus.error("Error: $e"));
    }
  }
}
