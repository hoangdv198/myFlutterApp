import '../core/post.dart';
import '../data/post_repository.dart';

class PostUseCase {
  final PostRepository _postRepository;

  PostUseCase(this._postRepository);

  Future<List<Post>> fetchPosts() {
    return _postRepository.fetchPosts();
  }
}
