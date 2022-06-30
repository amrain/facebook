import 'package:facebook/Model/Post.dart';
import 'package:facebook/Model/user.dart';

class PostRespons {
  User? user;
  Post? post;

  PostRespons.fromJson(Map<String, dynamic> data){
  user = User.fromJson(data['user']);
  post = Post.fromJson(data['post']);

  }


}