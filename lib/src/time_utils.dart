class TimeUtils {
  int get timeUtilsVersion => 1;
  //获取当前时间的unix时间戳
  int getCurrrentTimestamp() {
    return (DateTime.now().millisecondsSinceEpoch / 1000).floor();
  }

  /**
   * 获取当前时间的微秒
   */
  int getCurrentMillseconds() {
    return DateTime.now().millisecondsSinceEpoch;
  }
}
