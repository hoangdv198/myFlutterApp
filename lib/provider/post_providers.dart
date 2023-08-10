
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_app/core/post.dart';
import '../domain/repositories/post_repository.dart';
import '../data/repositories/post_repository_impl.dart';

final postFutureProvider = FutureProvider.autoDispose<List<Post>>((ref) {
  // get repository from the provider below
  final postRepository = ref.watch(postRepositoryProvider);
  // call method that returns a Future<Weather>
  return postRepository.fetchPosts();
});

final postRepositoryProvider = Provider<PostRepository>((ref) {
  return PostRepositoryImpl();
});