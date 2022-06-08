import 'package:bsmi_base/bsmi_base.dart' as bb ;
void main() {
  var awesome = bb.Awesome();
  print('awesome: ${awesome.isAwesome}');

  var tu = bb.TimeUtils();
  print('TimeUnits version: ${tu.timeUtilsVersion}');

}
