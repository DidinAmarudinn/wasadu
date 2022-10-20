import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wasdu_mobile2/core/app_export.dart';
import 'package:wasdu_mobile2/presentation/bulk_infra_detail_screen/controller/bulk_infra_detail_controller.dart';
import 'package:wasdu_mobile2/presentation/bulk_infra_detail_screen/models/bulk_infra_detail_model.dart';
import 'package:wasdu_mobile2/presentation/bulk_infra_detail_screen/models/bulk_infra_model.dart';
import 'package:wasdu_mobile2/presentation/bulk_infra_detail_screen/models/bulk_condition_model.dart';

class BulkInfraInputOpiniDialog extends StatelessWidget {
  BulkInfraInputOpiniDialog(this.bulkInfraDetailModelObj);

  BulkInfraDetailModel bulkInfraDetailModelObj;

  var controller = Get.find<BulkInfraDetailController>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        type: MaterialType.transparency,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          padding: EdgeInsets.all(19),
          width: MediaQuery.of(context).size.width * 0.88,
          height: 680,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  'PJUTS : PJ220000001-2',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 12,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      'Kondisi Terakhir',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      'A1 - Menyala Fisik Bagus',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      'Masukkan Kondisi Asset',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: bulkInfraDetailModelObj.bulkConditionList.length,
                    itemBuilder: (context, index) {
                      // print(
                      //     '${bulkInfraDetailModelObj.bulkConditionList[index].code}');
                      BulkCondition condition =
                          bulkInfraDetailModelObj.bulkConditionList[index];
                      return Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${condition.code} - ${condition.description}',
                              textAlign: TextAlign.left,
                              style: TextStyle(),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(hintText: ''),
                          )
                        ],
                      );
                    }),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  maxLines: 4,
                  decoration: InputDecoration(hintText: 'Masukan Detail Audit'),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 36,
                  width: 265,
                  child: ElevatedButton(
                    onPressed: () {
                      selectFile(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff01A299),
                      minimumSize: const Size(122, 48),
                      maximumSize: const Size(122, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Text(
                      'UPLOAD',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    const Text(
                      'Selected file:',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 4,
                            mainAxisSpacing: 10),
                        padding: EdgeInsets.all(2),
                        itemCount: bulkInfraDetailModelObj.files?.length,
                        itemBuilder: (context, index) {
                          return Image.file(
                            bulkInfraDetailModelObj.files?[index],
                            width: 90,
                            height: 90,
                          );
                        })
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 36,
                  width: 265,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff000000),
                      minimumSize: const Size(122, 48),
                      maximumSize: const Size(122, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Text(
                      'SIMPAN',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  selectFile(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        type: FileType.custom,
        allowedExtensions: ['jpg', 'pdf', 'doc']);
    if (result != null) {
      bulkInfraDetailModelObj.files =
          result.paths.map((path) => File(path!)).toList();
      (context as Element).markNeedsBuild();
      print(bulkInfraDetailModelObj.files);
    } else {
      // User canceled the picker
    }
  }
}
