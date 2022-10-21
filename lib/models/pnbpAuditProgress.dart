import 'dart:ffi';

import 'package:wasdu_mobile2/models/pnbpAuditPhoto.dart';

class PnbpAuditProgress {
  String? rkab_submission_date;
  String? rkab_agreement_date;
  String? production_quota;
  String? production_realization;
  String? production_calorie_value;
  Bool? production_blending;
  String? dmo_quota;
  String? dmo_realization;
  String? port_ownership;
  Bool? own_scan_analyzer;
  String? scan_analyzer_type;
  List<PnbpAuditPhoto>? photos;

  PnbpAuditProgress({
    this.rkab_submission_date,
    this.rkab_agreement_date,
    this.production_quota,
    this.production_realization,
    this.production_calorie_value,
    this.production_blending,
    this.dmo_quota,
    this.dmo_realization,
    this.port_ownership,
    this.own_scan_analyzer,
    this.scan_analyzer_type,
    this.photos,
  });

  PnbpAuditProgress.fromJson(json) {
    rkab_submission_date = json['rkab_submission_date'];
    rkab_agreement_date = json['rkab_agreement_date'];
    production_quota = json['production_quota'];
    production_realization = json['production_realization'];
    production_calorie_value = json['production_calorie_value'];
    production_blending = json['production_blending'];
    dmo_quota = json['dmo_quota'];
    dmo_realization = json['dmo_realization'];
    port_ownership = json['port_ownership'];
    own_scan_analyzer = json['own_scan_analyzer'];
    scan_analyzer_type = json['scan_analyzer_type'];
    photos = List<PnbpAuditPhoto>.from(
        json['photos'].map((x) => PnbpAuditPhoto.fromJson(x)));
  }
}
