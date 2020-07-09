import 'dart:async';

import 'package:STG/Bloc/BlocHome/AbstractBloc.dart';
import 'package:STG/Body/GeneralTheme.dart';

enum enumC{
  accuil,
  inscription,
  connection,
}

class OptionBloc extends AbstractBloc{

  enumC enu=enumC.accuil;

  OptionBloc(){
    sink.add(enu);
  }

  final _controller = StreamController<enumC>();

  Sink<enumC> get sink =>_controller.sink;

  Stream<enumC> get stream => _controller.stream;

  changer(enumC e){
    enu = e;
    sink.add(enu);
  }

  enumC get what => enu;
  @override
  dispose() => _controller.close();

}