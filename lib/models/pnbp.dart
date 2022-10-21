import 'package:wasdu_mobile2/models/auditTask.dart';
import 'package:wasdu_mobile2/models/pnbpAuditProgress.dart';

class Pnbp {
  String? id;
  String? number;
  String? government_department;
  String? sk_iup;
  String? start_date;
  String? end_date;
  String? activity_name;
  String? permit_type;
  String? sk_area;
  String? cnc;
  String? commodity;
  String? wiup_code;
  String? photo;
  AuditTask? audit_task;
  PnbpAuditProgress? audit_progress;

  Pnbp({
    this.id,
    this.number,
    this.government_department,
    this.sk_iup,
    this.start_date,
    this.end_date,
    this.activity_name,
    this.permit_type,
    this.sk_area,
    this.cnc,
    this.commodity,
    this.wiup_code,
    this.photo,
    this.audit_task,
    this.audit_progress,
  });

  Pnbp.fromJson(json) {
    id = json['id'];
    number = json['number'];
    government_department = json['government_department'];
    sk_iup = json['sk_iup'];
    start_date = json['start_date'];
    end_date = json['end_date'];
    activity_name = json['activity_name'];
    permit_type = json['permit_type'];
    sk_area = json['sk_area'];
    cnc = json['cnc'];
    commodity = json['commodity'];
    wiup_code = json['wiup_code'];
    photo = json['photo'];
    audit_task = AuditTask.fromJson(json['audit_task']);
    audit_progress = PnbpAuditProgress.fromJson(json['audit_progress']);
  }
}
