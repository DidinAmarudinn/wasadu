class AssignedPNBPModel {
  List<AssignedPNBPData>? data;
  Links? links;
  Meta? meta;

  AssignedPNBPModel({this.data, this.links, this.meta});

  AssignedPNBPModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <AssignedPNBPData>[];
      json['data'].forEach((v) {
        data!.add(new AssignedPNBPData.fromJson(v));
      });
    }
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    return data;
  }
}

class AssignedPNBPData {
  String? id;
  String? number;
  String? governmentDepartment;
  String? companyId;
  String? locationId;
  String? skIup;
  String? startDate;
  String? endDate;
  String? activityName;
  String? permitType;
  String? skArea;
  String? cnc;
  String? commodity;
  String? wiupCode;
  String? createdAt;
  String? updatedAt;
  AuditTask? auditTask;
  AuditProgress? auditProgress;

  AssignedPNBPData(
      {this.id,
      this.number,
      this.governmentDepartment,
      this.companyId,
      this.locationId,
      this.skIup,
      this.startDate,
      this.endDate,
      this.activityName,
      this.permitType,
      this.skArea,
      this.cnc,
      this.commodity,
      this.wiupCode,
      this.createdAt,
      this.updatedAt,
      this.auditTask,
      this.auditProgress});

  AssignedPNBPData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    number = json['number'];
    governmentDepartment = json['government_department'];
    companyId = json['company_id'];
    locationId = json['location_id'];
    skIup = json['sk_iup'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    activityName = json['activity_name'];
    permitType = json['permit_type'];
    skArea = json['sk_area'];
    cnc = json['cnc'];
    commodity = json['commodity'];
    wiupCode = json['wiup_code'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    auditTask = json['audit_task'] != null
        ? new AuditTask.fromJson(json['audit_task'])
        : null;
    auditProgress = json['audit_progress'] != null
        ? new AuditProgress.fromJson(json['audit_progress'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['number'] = this.number;
    data['government_department'] = this.governmentDepartment;
    data['company_id'] = this.companyId;
    data['location_id'] = this.locationId;
    data['sk_iup'] = this.skIup;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['activity_name'] = this.activityName;
    data['permit_type'] = this.permitType;
    data['sk_area'] = this.skArea;
    data['cnc'] = this.cnc;
    data['commodity'] = this.commodity;
    data['wiup_code'] = this.wiupCode;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.auditTask != null) {
      data['audit_task'] = this.auditTask!.toJson();
    }
    if (this.auditProgress != null) {
      data['audit_progress'] = this.auditProgress!.toJson();
    }
    return data;
  }
}

class AuditTask {
  String? id;
  String? locationId;
  String? auditType;
  String? startDate;
  String? endDate;
  String? status;
  Null? deletedAt;
  String? createdAt;
  String? updatedAt;
  String? number;

  AuditTask(
      {this.id,
      this.locationId,
      this.auditType,
      this.startDate,
      this.endDate,
      this.status,
      this.deletedAt,
      this.createdAt,
      this.updatedAt,
      this.number});

  AuditTask.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    locationId = json['location_id'];
    auditType = json['audit_type'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    status = json['status'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['location_id'] = this.locationId;
    data['audit_type'] = this.auditType;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['status'] = this.status;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['number'] = this.number;
    return data;
  }
}

class AuditProgress {
  String? auditorId;
  String? rkabSubmissionDate;
  String? rkabAgreementDate;
  String? productionQuota;
  String? productionRealization;
  String? productionCalorieValue;
  bool? productionBlending;
  String? dmoQuota;
  String? dmoRealization;
  String? portOwnership;
  bool? ownScanAnalyzer;
  String? scanAnalyzerType;
  List<Photos>? photos;

  AuditProgress(
      {this.auditorId,
      this.rkabSubmissionDate,
      this.rkabAgreementDate,
      this.productionQuota,
      this.productionRealization,
      this.productionCalorieValue,
      this.productionBlending,
      this.dmoQuota,
      this.dmoRealization,
      this.portOwnership,
      this.ownScanAnalyzer,
      this.scanAnalyzerType,
      this.photos});

  AuditProgress.fromJson(Map<String, dynamic> json) {
    auditorId = json['auditor_id'];
    rkabSubmissionDate = json['rkab_submission_date'];
    rkabAgreementDate = json['rkab_agreement_date'];
    productionQuota = json['production_quota'];
    productionRealization = json['production_realization'];
    productionCalorieValue = json['production_calorie_value'];
    productionBlending = json['production_blending'];
    dmoQuota = json['dmo_quota'];
    dmoRealization = json['dmo_realization'];
    portOwnership = json['port_ownership'];
    ownScanAnalyzer = json['own_scan_analyzer'];
    scanAnalyzerType = json['scan_analyzer_type'];
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) {
        photos!.add(new Photos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['auditor_id'] = this.auditorId;
    data['rkab_submission_date'] = this.rkabSubmissionDate;
    data['rkab_agreement_date'] = this.rkabAgreementDate;
    data['production_quota'] = this.productionQuota;
    data['production_realization'] = this.productionRealization;
    data['production_calorie_value'] = this.productionCalorieValue;
    data['production_blending'] = this.productionBlending;
    data['dmo_quota'] = this.dmoQuota;
    data['dmo_realization'] = this.dmoRealization;
    data['port_ownership'] = this.portOwnership;
    data['own_scan_analyzer'] = this.ownScanAnalyzer;
    data['scan_analyzer_type'] = this.scanAnalyzerType;
    if (this.photos != null) {
      data['photos'] = this.photos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Photos {
  String? pnbpAuditId;
  String? pnbpId;
  String? filePath;
  String? fileName;
  String? createdAt;
  String? updatedAt;

  Photos(
      {this.pnbpAuditId,
      this.pnbpId,
      this.filePath,
      this.fileName,
      this.createdAt,
      this.updatedAt});

  Photos.fromJson(Map<String, dynamic> json) {
    pnbpAuditId = json['pnbp_audit_id'];
    pnbpId = json['pnbp_id'];
    filePath = json['file_path'];
    fileName = json['file_name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pnbp_audit_id'] = this.pnbpAuditId;
    data['pnbp_id'] = this.pnbpId;
    data['file_path'] = this.filePath;
    data['file_name'] = this.fileName;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Links {
  String? first;
  String? last;

  Links({this.first, this.last});

  Links.fromJson(Map<String, dynamic> json) {
    first = json['first'];
    last = json['last'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first'] = this.first;
    data['last'] = this.last;
    return data;
  }
}

class Meta {
  int? currentPage;
  int? from;
  int? lastPage;
  String? path;
  String? perPage;
  int? to;
  int? total;

  Meta(
      {this.currentPage,
      this.from,
      this.lastPage,
      this.path,
      this.perPage,
      this.to,
      this.total});

  Meta.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    from = json['from'];
    lastPage = json['last_page'];
    path = json['path'];
    perPage = json['per_page'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    data['path'] = this.path;
    data['per_page'] = this.perPage;
    data['to'] = this.to;
    data['total'] = this.total;
    return data;
  }
}
