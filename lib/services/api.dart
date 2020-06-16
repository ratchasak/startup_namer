import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:startup_namer/models/comment.dart';
import 'package:startup_namer/models/post.dart';
import 'package:startup_namer/models/user.dart';

class Api {
  static const endPoint = 'https://jsonplaceholder.typicode.com';

  var client = new http.Client();

  Future<List<Comment>> getCommentsForPost(int postId) async {
    var comments = List<Comment>();
    var response = await client.get('$endPoint/comments?postId=$postId');
    var parsed = json.decode(response.body) as List<dynamic>;
    for (var comment in parsed) {
      comments.add(Comment.fromJson(comment));
    }
    return comments;
  }

  Future<List<Post>> getPostsForUser(int userId) async {
    var posts = List<Post>();
    var response = await client.get('$endPoint/posts?userId=$userId');
    var parsed = json.decode(response.body) as List<dynamic>;
    for (var post in parsed) {
      posts.add(Post.fromJson(post));
    }

    return posts;
  }

  Future<User> getUserProfile(int userId) async {
    var response = await client.get('$endPoint/users/$userId');
    return User.fromJson(json.decode(response.body));
  }
}
