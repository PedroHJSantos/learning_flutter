import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_aula_1/app/app_controller.dart';
import 'package:slidy_aula_1/app/app_widget.dart';
import 'package:slidy_aula_1/pages/home/home_controller.dart';
import 'package:slidy_aula_1/pages/home/home_page.dart';
import 'package:slidy_aula_1/pages/other/other_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
    Bind((i) => AppController()),
    Bind((i) => HomeController())
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => HomePage()),
    Router('/other', child: (_, args) => OtherPage()),
  ];

  @override
  Widget get bootstrap => AppWidget();

}