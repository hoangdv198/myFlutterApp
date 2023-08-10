import 'dart:async';

import '../../core/post.dart';
import '../../domain/repositories/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  @override
  Future<List<Post>> fetchPosts() async {
    // Fetch post data from the API or any other data source
    // and return the list of posts
    // You can use the ApiService class or any other data fetching mechanism here
    // For simplicity, we'll use a mock data list
    Completer<List<Post>> completer = Completer<List<Post>>();
    // Simulate fetching post data
    // Replace this with your actual API call or data fetching mechanism
    Future.delayed(Duration(seconds: 1), () {
      List<Post> posts = mockData;

      // Resolve the Completer with the fetched posts
      completer.complete(posts);
    });

    // Return the Future from the Completer
    return completer.future;
  }
}

var mockData = [
  Post(id: 1, title: 'Post 1', username: 'Kohi', location: 'Tokyo, Japan'),
  Post(
      id: 2,
      title: 'Post 2',
      username: 'actorhoangdang',
      location: 'Ha Noi, Viet Nam'),
  Post(
      id: 3,
      title: 'Post 3',
      username: 'quangdb',
      location: 'Ho Chi Minh,Viet Nam'),
  Post(
      id: 4,
      title: 'Post 3',
      username: 'ancac',
      location: 'Ho Chi Minh,Viet Nam'),
  Post(
      id: 5,
      title: 'Post 3',
      username: 'hehe',
      location: 'Ho Chi Minh,Viet Nam'),
];
