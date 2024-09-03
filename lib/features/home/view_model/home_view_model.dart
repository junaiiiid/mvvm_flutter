import 'package:mvvm_architecture/architecture/base_view_model.dart';
import 'package:mvvm_architecture/features/home/model/home_model.dart';

class HomeViewModel extends BaseViewModel{

  HomeModel homeModel = HomeModel(appBarTitle: "", title: "", subtitle: "");

  @override
  void callDispose() {
    homeModel = HomeModel(appBarTitle: "", title: "", subtitle: "");
  }

  @override
  void callInitState() {
    homeModel = HomeModel(appBarTitle: "AppBar Title", title: "This is a title", subtitle: "This is a subtitle");
  }
}