import 'dart:async';

// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';
import 'package:flutter_playground/bloc/bloc_helpers/bloc_provider.dart';
import 'package:flutter_playground/models/todog_model.dart';

class CreateToDogBloc extends BlocBase {
  final BehaviorSubject<int> _colorController = BehaviorSubject<int>();
  Stream<int> get color => _colorController.stream;
  Function(int) get colorOnChanged => _colorController.sink.add;

  final BehaviorSubject<int> _durationController = BehaviorSubject<int>();
  Stream<int> get duration => _durationController.stream;
  Function(int) get durationOnChanged => _durationController.sink.add;

  final BehaviorSubject<String> _titleController = BehaviorSubject<String>();
  Function(String) get titleOnChanged => _titleController.sink.add;
  Stream<bool> get isValidCreate => _titleController.stream.transform(
          StreamTransformer<String, bool>.fromHandlers(
              handleData: (data, sink) {
        sink.add(data.isNotEmpty);
      }));

  final BehaviorSubject<bool> _createToDogController = BehaviorSubject<bool>();
  Function(bool) get createToDog => _createToDogController.sink.add;
  final BehaviorSubject<CreateTodogState> _stateController =
      BehaviorSubject<CreateTodogState>();
  Stream<CreateTodogState> get state => _stateController.stream;
  @override
  void dispose() {
    _colorController.close();
    _durationController.close();
    _titleController.close();
    _createToDogController.close();
    _stateController.close();
  }

  CreateToDogBloc() {
    _createToDogController.stream.listen(_handleCreateToDog);
  }

  void _handleCreateToDog(bool event) {
    if (event) {
      // final todog = createTodoObject();
      // Firestore.instance
      //     .collection('todogs')
      //     .document()
      //     .setData(todog.toJson())
      //     .then((_) => _stateController.sink.add(CreateTodogState.done))
      //     .catchError((er) {
      //   print(er);
        _stateController.sink.add(CreateTodogState.failed);
      };
    }
  }

  // @visibleForTesting
  // createTodoObject() {
  //   final title = _titleController.value;
  //   final duration = _durationController.value;
  //   final color = _colorController.value;
  //   return ToDogObj(title: 'title', duration: 'time', color: 'color');
  // }


enum CreateTodogState { create, done, failed }
