import 'package:flutter_playground/helper/constant.dart';
import 'package:flutter_playground/helper/utils.dart';
import 'package:flutter_playground/models/get_event.dart';
import 'package:flutter_playground/models/get_pet.dart';
import 'package:flutter_playground/webapi_bp/web_api.dart';
import 'package:rxdart/rxdart.dart';

final getPetBloc = GetPetBloc();

class GetPetBloc {
  final _getPetDataSubject = PublishSubject<List<PetData>>();

  Observable<List<PetData>> get getPetDataOb => _getPetDataSubject.stream;
  List<PetData> arrPets = List();

  getPet() async {
    bool isInternetConnected = await Utils.isInternetConnected();

    if (isInternetConnected) {
      dynamic data = await WebApi().callAPI(Const.get, WebApi.getPet, {});

      GetPetResponse getPetResponse = GetPetResponse.fromJson(data);

      arrPets = getPetResponse.results;
      _getPetDataSubject.sink.add(arrPets);
    }
  }

  addEvent(PetData pet) async {
    arrPets.add(pet);
    _getPetDataSubject.sink.add(arrPets);
  }

  dispose() {
    _getPetDataSubject.close();
  }
}
