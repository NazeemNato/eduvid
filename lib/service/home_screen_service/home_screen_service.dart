import 'package:eduvid/config/config.dart';
import 'package:eduvid/models/models.dart';
import 'package:http/http.dart' as http;

abstract class HomeService {
  Future<HomePageModel> getAll();
}

class HomeScreenService extends HomeService {
  @override
  Future<HomePageModel> getAll() async {
    HomePageModel homePage;
    try {
      var url = baseUrl + '/all';
      final response = await http.get(Uri.parse(url));
      if(response.statusCode == 200 || response.statusCode == 201){
        homePage = HomePageModel.fromJson(response.body);
      }else {
        throw 'Server error';
      }
    } catch (e) {
        throw e.toString();
    }
    return homePage;
  }
}
