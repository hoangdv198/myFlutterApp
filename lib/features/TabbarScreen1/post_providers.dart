
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_app/core/post.dart';
import '../../data/post_repository.dart';
import '../../domain/post_usecase.dart';
import '../../data/post_repository_impl.dart';

final postFutureProvider = FutureProvider.autoDispose<List<Post>>((ref) {
  // get repository from the provider below
  final postRepository = ref.watch(postRepositoryProvider);
  // call method that returns a Future<Weather>
  return postRepository.fetchPosts();
});

// example weather repository provider
final postRepositoryProvider = Provider<PostRepository>((ref) {
  return PostRepositoryImpl(); 
});