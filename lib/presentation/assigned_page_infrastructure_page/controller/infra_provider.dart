import 'package:flutter/foundation.dart';
import 'package:wasdu_mobile2/core/constants/request_state.dart';
import 'package:wasdu_mobile2/presentation/assigned_page_infrastructure_page/models/infra_model.dart';

import '../../../services/infraService.dart';

class InfraProvider extends ChangeNotifier {
  RequestState _state = RequestState.empty;

  InfraProvider(this.service);
  RequestState get state => _state;

  InfraModel? _infraData;
  InfraModel? get infraData => _infraData;
  final InfraService service;
  Future<void> getInfra() async {
    _state = RequestState.loading;
    notifyListeners();
    final result = await service.getInfra();
    if (result != null) {
      _state = RequestState.loaded;
      _infraData = result;
      notifyListeners();
      print(_infraData?.data?.length);
    } else {
      _state = RequestState.error;
      notifyListeners();
    }
  }
}
