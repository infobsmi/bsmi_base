import 'package:bsmi_base/bsmi_base.dart' as bb;

void main() {
  var awesome = bb.Awesome();
  print('awesome: ${awesome.isAwesome}');

  var tu = bb.TimeUtils();
  print('TimeUnits version: ${tu.timeUtilsVersion}');

  print('current time stamp: ${tu.getCurrrentTimestamp()}');
  print('current time in millseconds: ${tu.getCurrentMillseconds()}');

  var yt = bb.YamlUtils();

  print('yaml map: ${yt.loadYamlMapFromFile("example/demo.yml")}');
}
