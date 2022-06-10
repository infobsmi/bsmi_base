import 'dart:io';

import 'package:yaml/yaml.dart';

/// yaml 读取工具类
class YamlUtils {
  /// 从文件中读取yaml, 转换为yamlDocument
  YamlDocument loadYamlDocumentFromFile(String yamlFilePath, {sourceUrl}) {
    var yamlDocument = new File(yamlFilePath);
    return loadYamlDocument(yamlDocument.readAsStringSync());
  }

  /// 从文件中读取yaml，转换为yamlMap
  YamlMap loadYamlMapFromFile(String yamlFilePath, {sourceUrl}) {
    var yamlDocument = new File(yamlFilePath);
    return loadYaml(yamlDocument.readAsStringSync());
  }
}