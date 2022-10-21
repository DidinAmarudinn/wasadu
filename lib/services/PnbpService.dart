import 'package:wasdu_mobile2/services/BaseService.dart';

class PnbpService with BaseService {
  Future index({required String per_page, String? location_id}) async {
    var query = '?per_page=' + per_page + '&location_id=' + location_id!;
  }
}
