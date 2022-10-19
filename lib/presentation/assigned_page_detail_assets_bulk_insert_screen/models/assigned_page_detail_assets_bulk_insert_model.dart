import 'package:get/get.dart';
import 'listlabel_five_item_model.dart';
import 'listtextfieldoutl_item_model.dart';

class AssignedPageDetailAssetsBulkInsertModel {
  RxList<ListlabelFiveItemModel> listlabelFiveItemList =
      RxList.filled(2, ListlabelFiveItemModel());

  RxList<ListtextfieldoutlItemModel> listtextfieldoutlItemList =
      RxList.filled(5, ListtextfieldoutlItemModel());
}
