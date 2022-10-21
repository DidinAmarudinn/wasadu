class LoginModel {
  String? api_token;

  LoginModel({this.api_token});

  LoginModel.fromJson(json) {
    api_token = json['api_token'];
  }
}
