import 'package:json_annotation/json_annotation.dart';

part 'profile.g.dart';

@JsonSerializable(explicitToJson: true)
class Profile{
  @JsonKey(defaultValue: "")
  String name;
  @JsonKey(defaultValue: "")
  String sex;
  @JsonKey(defaultValue: "")
  String pictureUrl;

  Profile(this.name, this.sex, this.pictureUrl);

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);

  @override
  String toString() {
    return 'Profile{name: $name, sex: $sex, pictureUrl: $pictureUrl}';
  }
}
