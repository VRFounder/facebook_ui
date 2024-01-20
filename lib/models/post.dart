class Post {
  final String username;
  final List<String> postImgs;
  final String userImg;
  final String text;
  final String date;
  final int comments;
  final double likes;

  Post({required this.comments, required this.likes, required this.username, required this.userImg, required this.postImgs, required this.date, required this.text});
}