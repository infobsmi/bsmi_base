import 'dart:io';

import 'package:yaml/yaml.dart';
import 'package:checked_yaml/checked_yaml.dart';

import 'package:json_annotation/json_annotation.dart';
/// yaml 读取工具类
class YamlUtils<T> {
  /// 从文件中读取yaml, 转换为yamlDocument
  YamlDocument loadYamlDocumentFromFile(String yamlFilePath, {sourceUrl}) {
    var yamlDocument = new File(yamlFilePath);
    return loadYamlDocument(yamlDocument.readAsStringSync());
  }

  String loadStringFromYaml(String yamlFilePath) {
    var yamlDocument = new File(yamlFilePath);
    return yamlDocument.readAsStringSync();
  }

  /// 从文件中读取yaml，转换为yamlMap
  YamlMap loadYamlMapFromFile(String yamlFilePath, {sourceUrl}) {
    var yamlDocument = new File(yamlFilePath);
    return loadYaml(yamlDocument.readAsStringSync());
  }
  /// 解析 yaml 文件 映射到实体对象
  T parseYamlFileToClass(String yaml, T Function(Map?) constructor) {

    return checkedYamlDecode(
        loadStringFromYaml(yaml),
         constructor
    );
  }
}