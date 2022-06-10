import 'package:bsmi_base/bsmi_base.dart' as bb;
import 'package:json_annotation/json_annotation.dart';

//这一行特别重要，它定义了包含 pub 自动生产的 dart代码的 锚点
// 文件名跟这个文件名bsmi_base_example.dart 对应
// 构建的命令为：flutter pub run build_runner build
part 'bsmi_base_example.g.dart';

@JsonSerializable(
  anyMap: true,
  checked: true,
  disallowUnrecognizedKeys: true,
  explicitToJson: true,
)
class DemoYml {
  @JsonKey(required: true)
  final String ym;

  DemoYml({required this.ym}) {
    if (ym.isEmpty) {
      throw ArgumentError.value(ym, 'name', 'Cannot be empty.');
    }
  }

  factory DemoYml.fromJson(Map? json) => _$DemoYmlFromJson(json!);

  Map<String, dynamic> toJson() => _$DemoYmlToJson(this);

  @override
  String toString() => 'DemoYml: ${toJson()}';
}


void main() {
  var awesome = bb.Awesome();
  print('awesome: ${awesome.isAwesome}');

  var tu = bb.TimeUtils();
  print('TimeUnits version: ${tu.timeUtilsVersion}');

  print('current time stamp: ${tu.getCurrrentTimestamp()}');
  print('current time in millseconds: ${tu.getCurrentMillseconds()}');

  var yt = bb.YamlUtils();

  print('yaml map: ${yt.loadYamlMapFromFile("example/demo.yml")}');

  var yt2 = bb.YamlUtils<DemoYml>();
  print('yaml: ${yt2.parseYamlFileToClass("example/demo.yml", DemoYml.fromJson)}');
}
