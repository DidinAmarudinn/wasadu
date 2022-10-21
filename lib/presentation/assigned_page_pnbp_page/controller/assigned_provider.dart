import 'package:flutter/foundation.dart';
import 'package:wasdu_mobile2/presentation/assigned_page_pnbp_page/models/assigned_pnbp_model.dart';
import 'package:wasdu_mobile2/services/PnbpService.dart';

import '../../../core/constants/request_state.dart';

class AsignedProvider extends ChangeNotifier {
  RequestState _state = RequestState.empty;

  AsignedProvider(this.service);
  RequestState get state => _state;

  AssignedPNBPModel? _infraData;
  AssignedPNBPModel? get infraData => _infraData;
  final PnbpService service;
  Future<void> getPNBP() async {
    _state = RequestState.loading;
    notifyListeners();
    final result = await service.getPNBP();
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