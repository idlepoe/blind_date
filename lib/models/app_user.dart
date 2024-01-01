import 'package:json_annotation/json_annotation.dart';

part 'app_user.g.dart';

@JsonSerializable(explicitToJson: true)
class AppUser{
  @JsonKey(defaultValue: "")
  String name;
  @JsonKey(defaultValue: "")
  String sex;
  @JsonKey(defaultValue: "")
  String pictureUrl;

  AppUser(this.name, this.sex, this.pictureUrl);

  factory AppUser.fromJson(Map<String, dynamic> json) => _$AppUserFromJson(json);

  Map<String, dynamic> toJson() => _$AppUserToJson(this);

  @override
  String toString() {
    return 'AppUser{name: $name, sex: $sex, pictureUrl: $pictureUrl}';
  }
}
