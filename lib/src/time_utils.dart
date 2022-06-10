/// 时间处理工具，用于获取时间，转换时间等
class TimeUtils {
  ///
  /// 用户获取时间的版本号
  /// ```dart
  /// print(' time utils version: ${timeUtilsVersion}');
  /// ```
  int get timeUtilsVersion => 1;

  /// 获取当前时间的unix时间戳
  /// ```dart
  /// print(' current time stamp: ${getCurrentTimestamp()}');
  /// ```
  int getCurrrentTimestamp() {
    return (DateTime.now().millisecondsSinceEpoch / 1000).floor();
  }

  /// 获取当前时间的微秒
  /// ```dart
  ///  print('current time in millseconds: ${getCurrentMillseconds()}');
  /// ```
  int getCurrentMillseconds() {
    return DateTime.now().millisecondsSinceEpoch;
  }
}
