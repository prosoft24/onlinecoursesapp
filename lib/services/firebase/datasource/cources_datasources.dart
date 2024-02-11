import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:onlinecoursesapp/model/cource_model.dart';
import 'package:onlinecoursesapp/services/api/api_service.dart';

class CourcesDatasources {
  final firebase = FirebaseFirestore.instance;

  Future<List<Cource>> getCources() async {
    final dio = Dio();
    final client = RestClient(dio);
    print("====> API response");
    client.getCourses().then((value) => print(value));
    print("====> API response");
    final res = await firebase.collection('cources').get();
    if (res.docs.isEmpty) return [];
    return res.docs.map((e) => Cource.fromMap(e.data())).toList();
  }

  Future<void> addCource(Cource cource) async {
    await firebase.collection('cources').add(cource.toMap());
  }
}
