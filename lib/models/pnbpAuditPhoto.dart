class PnbpAuditPhoto {
  String? file_path;
  String? file_name;

  PnbpAuditPhoto({this.file_path, this.file_name});

  PnbpAuditPhoto.fromJson(json) {
    file_path = json['file_path'];
    file_name = json['file_name'];
  }
}
