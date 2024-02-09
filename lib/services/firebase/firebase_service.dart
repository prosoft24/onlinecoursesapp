import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:onlinecoursesapp/services/firebase/datasource/cources_datasources.dart';
import 'package:onlinecoursesapp/services/firebase/datasource/lecture_datasources.dart';
import 'package:onlinecoursesapp/services/firebase/datasource/notice_event_datdsource.dart';
import 'package:onlinecoursesapp/services/firebase/datasource/user_datasource.dart';
class FirebaseService extends GetxService {
  final firebase = FirebaseFirestore.instance;
  final noticeEventDatasource = NoticeEventDatasource();
  final userDatasources = UserDatasources();
  final courceDatasource = CourcesDatasources();
  final lectureDatasourcese = LectureDatasources();
}
