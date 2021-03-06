import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_aula_2/app/modules/home/home_controller.dart';
import 'package:slidy_aula_2/app/modules/home/home_page.dart';
import 'package:slidy_aula_2/app/modules/home/repositories/poke_repository.dart';

class HomeModulo extends ChildModule {

  @override
  List<Bind> get binds => [
    Bind((i) => HomeController(i.get<PokeRepository>())),
    Bind((i) => PokeRepository(i.get<Dio>())),
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => HomePage()),
  ];

}