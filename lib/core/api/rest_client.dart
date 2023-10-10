import 'package:dio/dio.dart';
import 'package:my_flutter_app/core/api/models/auth/auth_body.dart';
import 'package:my_flutter_app/core/api/models/auth/auth_response.dart';
import 'package:my_flutter_app/core/api/models/stream/streams_viewable_response.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'http://103.38.236.154:3000/api/v1/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST('/auth/login')
  Future<AuthResponse> login(@Body() AuthBody body);

  @GET('/streams/viewable?page={page}&limit={limit}')
  Future<GetStreamsViewableResponse> getStreamsViewable(@Path('page') int page, @Path('limit') int limit);

}

