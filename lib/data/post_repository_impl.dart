import 'post_repository.dart';
import '../core/post.dart';

class PostRepositoryImpl implements PostRepository {
  @override
  Future<List<Post>> fetchPosts() async {
    // Fetch post data from the API or any other data source
    // and return the list of posts
    // You can use the ApiService class or any other data fetching mechanism here
    // For simplicity, we'll use a mock data list
    return [
      Post(id: 1, title: 'Post 1'),
      Post(id: 2, title: 'Post 2'),
      Post(id: 3, title: 'Post 3'),
    ];
  }
}
