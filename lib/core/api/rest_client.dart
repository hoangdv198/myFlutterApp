import 'package:dio/dio.dart';
import 'package:my_flutter_app/core/api/constant/api.dart';
import 'package:my_flutter_app/core/api/models/user.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: BASE_URL)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST('auth/login')
  Future<UserModel> login(String username,String password);
}

