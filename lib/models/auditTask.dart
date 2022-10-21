class AuditTask {
  String? id;
  String? audit_type;
  String? start_date;
  String? end_date;
  String? status;
  String? number;

  AuditTask({
    this.id,
    this.audit_type,
    this.start_date,
    this.end_date,
    this.status,
    this.number,
  });

  AuditTask.fromJson(json) {
    id = json['id'];
    audit_type = json['audit_type'];
    start_date = json['start_date'];
    end_date = json['end_date'];
    status = json['status'];
    number = json['number'];
  }
}
