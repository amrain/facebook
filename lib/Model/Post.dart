 class Post{
  String? content;
  String? image;
  int? numlike;

  Post.fromJson(Map<String,dynamic> data){
    content = data['content'];
    image = data['image'];
    numlike = data['numlike'];
  }


 }