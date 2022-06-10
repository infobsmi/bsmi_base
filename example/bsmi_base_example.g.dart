// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bsmi_base_example.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DemoYml _$DemoYmlFromJson(Map json) => $checkedCreate(
      'DemoYml',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['ym'],
          requiredKeys: const ['ym'],
        );
        final val = DemoYml(
          ym: $checkedConvert('ym', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$DemoYmlToJson(DemoYml instance) => <String, dynamic>{
      'ym': instance.ym,
    };
