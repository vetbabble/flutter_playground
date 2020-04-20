import 'package:flutter_playground/helper/constant.dart';
import 'package:flutter_playground/helper/utils.dart';
import 'package:flutter_playground/models/get_event.dart';
import 'package:flutter_playground/webapi_bp/web_api.dart';
import 'package:rxdart/rxdart.dart';

final getEventBloc = GetEventsBloc();

class GetEventsBloc {
  final _getEventSubject = PublishSubject<List<PetEvent>>();

  Observable<List<PetEvent>> get getEventsOb => _getEventSubject.stream;

  getEvents() async {
    bool isInternetConnected = await Utils.isInternetConnected();
    List<PetEvent> arrQuestions = List();
    if (isInternetConnected) {
      dynamic data = await WebApi().callAPI(Const.get, WebApi.rqGetEvents, {});

      GetEventResponse getEventResponse = GetEventResponse.fromJson(data);

      arrQuestions = getEventResponse.results;
      _getEventSubject.sink.add(arrQuestions);
    }
  }

  addEvent(PetEvent event) async {
    List<PetEvent> arrEvents = List();
    arrEvents.add(event);
    _getEventSubject.sink.add(arrEvents);
  }

  dispose() {
    _getEventSubject.close();
  }
}
