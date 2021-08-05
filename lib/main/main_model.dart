import 'package:tatneft_quest/domein/dataProvider/session_data_provider.dart';

class MainModel {
  final _sessionDataProvider = SessionDataProvider();
  var _isAuth = false; //получаем доступ внутри файла
  bool get isAuth => _isAuth; //чтобы использовать снаружи

  Future<void> checkAuth() async {
    final sessionId = await _sessionDataProvider.getSessionId();
    _isAuth = sessionId != null;
  }
}
