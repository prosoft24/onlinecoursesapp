import 'package:dio/dio.dart';
import 'package:onlinecoursesapp/model/course_model.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: 'http://192.168.0.235:3000')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/course')
  Future<List<Course>> getCourses();
}
