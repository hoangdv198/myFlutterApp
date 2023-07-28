class Post {
  final int id;
  final String title;
  final String username;
  final String? location;
  Post({required this.id, required this.title,required this.username, this.location = ''});
}
