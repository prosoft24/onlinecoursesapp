import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:onlinecoursesapp/services/datasource/appuser_datasource.dart';
import 'package:onlinecoursesapp/services/datasource/theme_datasource.dart';

import 'datasource/fav_datasources.dart';


class BoxService extends GetxService {
  late final ThemeDatasource themeBox;
  late final FavDatasources favBox;
  late final AppUserDatasource appUser;
  final box = GetStorage();

  //get appUser => null;

  // init() {}

  Future<void> init() async {
    themeBox = ThemeDatasource(box);
    favBox = FavDatasources(box);
    appUser = AppUserDatasource(box);
    appUser.init();
  }
}
