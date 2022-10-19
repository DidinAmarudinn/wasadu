import 'package:get/get.dart';
import 'listlabel1_item_model.dart';

class AssignedPageInfrastructureModel {
  // RxList<Listlabel1ItemModel> listlabel1ItemList =
  //     RxList.filled(2,
  //       Listlabel1ItemModel(type: 'bulk'),
  //     );

  RxList<Listlabel1ItemModel> listlabel1ItemList = <Listlabel1ItemModel>[
    Listlabel1ItemModel(auditType: 'bulk', name: 'LTSHE 220000001'),
    Listlabel1ItemModel(auditType: 'individual', name: 'PJUTS 220000001')
  ].obs;
}
