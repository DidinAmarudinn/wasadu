class InfraModel {
  List<InfraData>? data;
  Links? links;
  Meta? meta;

  InfraModel({this.data, this.links, this.meta});

  InfraModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <InfraData>[];
      json['data'].forEach((v) {
        data!.add(new InfraData.fromJson(v));
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

class InfraData {
  String? id;
  String? uniqueCode;
  String? infrastructureType;
  String? locationId;
  String? auditType;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  String? name;
  String? capacity;
  String? grantStatus;
  String? isOnGrid;
  String? numberServed;
  String? packageId;
  String? contractValue;
  String? manualCode;
  String? photo;
  InfraPackage? package;
  Location? location;
  AuditTask? auditTask;
  AuditProgress? auditProgress;

  InfraData(
      {this.id,
      this.uniqueCode,
      this.infrastructureType,
      this.locationId,
      this.auditType,
      this.deletedAt,
      this.createdAt,
      this.updatedAt,
      this.name,
      this.capacity,
      this.grantStatus,
      this.isOnGrid,
      this.numberServed,
      this.packageId,
      this.contractValue,
      this.manualCode,
      this.photo,
      this.package,
      this.location,
      this.auditTask,
      this.auditProgress});

  InfraData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uniqueCode = json['unique_code'];
    infrastructureType = json['infrastructure_type'];
    locationId = json['location_id'];
    auditType = json['audit_type'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    name = json['name'];
    capacity = json['capacity'];
    grantStatus = json['grant_status'];
    isOnGrid = json['is_on_grid'];
    numberServed = json['number_served'];
    packageId = json['package_id'];
    contractValue = json['contract_value'];
    manualCode = json['manual_code'];
    photo = json['photo'];
    package =
        json['package'] != null ? new InfraPackage.fromJson(json['package']) : null;
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
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
    data['unique_code'] = this.uniqueCode;
    data['infrastructure_type'] = this.infrastructureType;
    data['location_id'] = this.locationId;
    data['audit_type'] = this.auditType;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['name'] = this.name;
    data['capacity'] = this.capacity;
    data['grant_status'] = this.grantStatus;
    data['is_on_grid'] = this.isOnGrid;
    data['number_served'] = this.numberServed;
    data['package_id'] = this.packageId;
    data['contract_value'] = this.contractValue;
    data['manual_code'] = this.manualCode;
    data['photo'] = this.photo;
    if (this.package != null) {
      data['package'] = this.package!.toJson();
    }
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    if (this.auditTask != null) {
      data['audit_task'] = this.auditTask!.toJson();
    }
    if (this.auditProgress != null) {
      data['audit_progress'] = this.auditProgress!.toJson();
    }
    return data;
  }
}

class InfraPackage {
  String? id;
  String? name;
  String? contractValue;
  String? providerId;
  String? fiscalYear;
  String? ppkId;
  String? constituencyId;
  Null? deletedAt;
  String? createdAt;
  String? updatedAt;
  InfraProviderData? provider;
  InfraPpk? ppk;
  InfraConstituency? constituency;

  InfraPackage(
      {this.id,
      this.name,
      this.contractValue,
      this.providerId,
      this.fiscalYear,
      this.ppkId,
      this.constituencyId,
      this.deletedAt,
      this.createdAt,
      this.updatedAt,
      this.provider,
      this.ppk,
      this.constituency});

  InfraPackage.fromJson(json) {
    id = json['id'];
    name = json['name'];
    contractValue = json['contract_value'];
    providerId = json['provider_id'];
    fiscalYear = json['fiscal_year'];
    ppkId = json['ppk_id'];
    constituencyId = json['constituency_id'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    provider = json['provider'] != null
        ? new InfraProviderData.fromJson(json['provider'])
        : null;
    ppk = json['ppk'] != null ? new InfraPpk.fromJson(json['ppk']) : null;
    constituency = json['constituency'] != null
        ? new InfraConstituency.fromJson(json['constituency'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['contract_value'] = this.contractValue;
    data['provider_id'] = this.providerId;
    data['fiscal_year'] = this.fiscalYear;
    data['ppk_id'] = this.ppkId;
    data['constituency_id'] = this.constituencyId;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.provider != null) {
      data['provider'] = this.provider!.toJson();
    }
    if (this.ppk != null) {
      data['ppk'] = this.ppk!.toJson();
    }
    if (this.constituency != null) {
      data['constituency'] = this.constituency!.toJson();
    }
    return data;
  }
}

class InfraProviderData {
  String? id;
  String? name;
  String? companyType;
  String? picName;
  String? phone;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;

  InfraProviderData(
      {this.id,
      this.name,
      this.companyType,
      this.picName,
      this.phone,
      this.deletedAt,
      this.createdAt,
      this.updatedAt});

  InfraProviderData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    companyType = json['company_type'];
    picName = json['pic_name'];
    phone = json['phone'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['company_type'] = this.companyType;
    data['pic_name'] = this.picName;
    data['phone'] = this.phone;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class InfraPpk {
  String? id;
  String? name;
  String? nip;
  String? unit;
  String? phone;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;

  InfraPpk(
      {this.id,
      this.name,
      this.nip,
      this.unit,
      this.phone,
      this.deletedAt,
      this.createdAt,
      this.updatedAt});

  InfraPpk.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nip = json['nip'];
    unit = json['unit'];
    phone = json['phone'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['nip'] = this.nip;
    data['unit'] = this.unit;
    data['phone'] = this.phone;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class InfraConstituency {
  String? id;
  String? name;
  String? phone;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;

  InfraConstituency(
      {this.id,
      this.name,
      this.phone,
      this.deletedAt,
      this.createdAt,
      this.updatedAt});

  InfraConstituency.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Location {
  String? id;
  String? code;
  String? name;
  String? parentId;
  String? createdAt;
  String? updatedAt;
  int? level;
  ParentLocation? parentLocation;

  Location(
      {this.id,
      this.code,
      this.name,
      this.parentId,
      this.createdAt,
      this.updatedAt,
      this.level,
      this.parentLocation});

  Location.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    name = json['name'];
    parentId = json['parent_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    level = json['level'];
    parentLocation = json['parent_location'] != null
        ? new ParentLocation.fromJson(json['parent_location'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['code'] = this.code;
    data['name'] = this.name;
    data['parent_id'] = this.parentId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['level'] = this.level;
    if (this.parentLocation != null) {
      data['parent_location'] = this.parentLocation!.toJson();
    }
    return data;
  }
}

class ParentLocation {
  String? id;
  String? code;
  String? name;
  String? parentId;
  String? latitude;
  String? longitude;
  String? createdAt;
  String? updatedAt;
  int? level;

  ParentLocation(
      {this.id,
      this.code,
      this.name,
      this.parentId,
      this.latitude,
      this.longitude,
      this.createdAt,
      this.updatedAt,
      this.level});

  ParentLocation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    name = json['name'];
    parentId = json['parent_id'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    level = json['level'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['code'] = this.code;
    data['name'] = this.name;
    data['parent_id'] = this.parentId;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['level'] = this.level;
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
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['number'] = this.number;
    return data;
  }
}

class AuditProgress {
  int? infrastructureAuditId;
  String? description;
  List<Photos>? photos;
  List<Conditions>? conditions;

  AuditProgress(
      {this.infrastructureAuditId,
      this.description,
      this.photos,
      this.conditions});

  AuditProgress.fromJson(Map<String, dynamic> json) {
    infrastructureAuditId = json['infrastructure_audit_id'];
    description = json['description'];
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) {
        photos!.add(new Photos.fromJson(v));
      });
    }
    if (json['conditions'] != null) {
      conditions = <Conditions>[];
      json['conditions'].forEach((v) {
        conditions!.add(new Conditions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['infrastructure_audit_id'] = this.infrastructureAuditId;
    data['description'] = this.description;
    if (this.photos != null) {
      data['photos'] = this.photos!.map((v) => v.toJson()).toList();
    }
    if (this.conditions != null) {
      data['conditions'] = this.conditions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Photos {
  String? infrastructureId;
  String? filePath;
  String? fileName;
  Null? description;
  int? infrastructureAuditId;

  Photos(
      {this.infrastructureId,
      this.filePath,
      this.fileName,
      this.description,
      this.infrastructureAuditId});

  Photos.fromJson(Map<String, dynamic> json) {
    infrastructureId = json['infrastructure_id'];
    filePath = json['file_path'];
    fileName = json['file_name'];
    description = json['description'];
    infrastructureAuditId = json['infrastructure_audit_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['infrastructure_id'] = this.infrastructureId;
    data['file_path'] = this.filePath;
    data['file_name'] = this.fileName;
    data['description'] = this.description;
    data['infrastructure_audit_id'] = this.infrastructureAuditId;
    return data;
  }
}

class Conditions {
  int? conditionId;
  String? code;
  String? description;
  int? total;

  Conditions({this.conditionId, this.code, this.description, this.total});

  Conditions.fromJson(Map<String, dynamic> json) {
    conditionId = json['condition_id'];
    code = json['code'];
    description = json['description'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['condition_id'] = this.conditionId;
    data['code'] = this.code;
    data['description'] = this.description;
    data['total'] = this.total;
    return data;
  }
}

class Links {
  String? first;
  String? last;
  Null? prev;
  Null? next;

  Links({this.first, this.last, this.prev, this.next});

  Links.fromJson(Map<String, dynamic> json) {
    first = json['first'];
    last = json['last'];
    prev = json['prev'];
    next = json['next'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first'] = this.first;
    data['last'] = this.last;
    data['prev'] = this.prev;
    data['next'] = this.next;
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