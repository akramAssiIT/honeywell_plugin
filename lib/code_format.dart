// ignore_for_file: constant_identifier_names

import 'package:collection/collection.dart' show IterableExtension;
import 'package:flutter/foundation.dart';

enum CodeFormat {
  /// Aztec 2D barcode format.
  AZTEC,

  /// CODABAR 1D format.
  CODABAR,
  CODABAR_START_STOP,

  /// Code 39 1D format.
  CODE_39,
  CODE_39_CHECK_DIGIT,

  /// Code 93 1D format.
  CODE_93,

  /// Code 128 1D format.
  CODE_128,

  /// Data Matrix 2D barcode format.
  DATA_MATRIX,

  /// EAN-8 1D format.
  EAN_8,
  EAN_8_CHECK_DIGIT,

  /// EAN-13 1D format.
  EAN_13,
  EAN_13_CHECK_DIGIT,

  /// MaxiCode 2D barcode format.
  MAXICODE,

  /// PDF417 format.
  PDF_417,

  /// QR Code 2D barcode format.
  QR_CODE,

  /// RSS 14
  RSS_14,

  /// RSS EXPANDED
  RSS_EXPANDED,

  /// UPC-A 1D format.
  UPC_A,
  UPC_A_CHECK_DIGIT,

  /// UPC-E 1D format.
  UPC_E,
  UPC_E_CHECK_DIGIT,
}

extension CodeFormatUtils on CodeFormat {
  static const String _CODE_FORMAT_PROPERTY_AZTEC_ENABLED = "DEC_AZTEC_ENABLED";
  static const String _CODE_FORMAT_PROPERTY_CODABAR_ENABLED =
      "DEC_CODABAR_ENABLED";

  static const String _CODE_FORMAT_PROPERTY_CODABAR_START_STOP =
      "DEC_CODABAR_START_STOP_TRANSMIT";
  static const String _CODE_FORMAT_PROPERTY_CODE_39_ENABLED =
      "DEC_CODE39_ENABLED";
  static const String _CODE_FORMAT_PROPERTY_CODE_39_CHECK_DIGIT =
      "DEC_CODE39_CHECK_DIGIT_TRANSMIT";
  static const String _CODE_FORMAT_PROPERTY_CODE_93_ENABLED =
      "DEC_CODE93_ENABLED";
  static const String _CODE_FORMAT_PROPERTY_CODE_128_ENABLED =
      "DEC_CODE128_ENABLED";
  static const String _CODE_FORMAT_PROPERTY_DATAMATRIX_ENABLED =
      "DEC_DATAMATRIX_ENABLED";
  static const String _CODE_FORMAT_PROPERTY_EAN_8_ENABLED = "DEC_EAN8_ENABLED";
  static const String _CODE_FORMAT_PROPERTY_EAN_8_CHECK_DIGIT =
      "DEC_EAN8_CHECK_DIGIT_TRANSMIT";
  static const String _CODE_FORMAT_PROPERTY_EAN_13_ENABLED =
      "DEC_EAN13_ENABLED";
  static const String _CODE_FORMAT_PROPERTY_EAN_13_CHECK_DIGIT =
      "DEC_EAN13_CHECK_DIGIT_TRANSMIT";
  static const String _CODE_FORMAT_PROPERTY_MAXICODE_ENABLED =
      "DEC_MAXICODE_ENABLED";
  static const String _CODE_FORMAT_PROPERTY_PDF_417_ENABLED =
      "DEC_PDF417_ENABLED";
  static const String _CODE_FORMAT_PROPERTY_QR_CODE_ENABLED = "DEC_QR_ENABLED";
  static const String _CODE_FORMAT_PROPERTY_RSS_ENABLED = "DEC_RSS_14_ENABLED";
  static const String _CODE_FORMAT_PROPERTY_RSS_EXPANDED_ENABLED =
      "DEC_RSS_EXPANDED_ENABLED";
  static const String _CODE_FORMAT_PROPERTY_UPC_A_ENABLE = "DEC_UPCA_ENABLE";
  static const String _CODE_FORMAT_PROPERTY_UPC_A_CHECK_DIGIT =
      "DEC_UPCA_CHECK_DIGIT_TRANSMIT";
  static const String _CODE_FORMAT_PROPERTY_UPC_E_ENABLED = "DEC_UPCE0_ENABLED";
  static const String _CODE_FORMAT_PROPERTY_UPC_E_CHECK_DIGIT =
      "DEC_UPCE_CHECK_DIGIT_TRANSMIT";

  /// All supported code formats
  static const List<CodeFormat> ALL_FORMATS = CodeFormat.values;

  /// One dimensional code formats
  static const List<CodeFormat> ALL_1D_FORMATS = [
    CodeFormat.CODABAR,
    CodeFormat.CODE_39,
    CodeFormat.CODE_39_CHECK_DIGIT,
    CodeFormat.CODE_93,
    CodeFormat.CODE_128,
    CodeFormat.EAN_8,
    CodeFormat.EAN_8_CHECK_DIGIT,
    CodeFormat.EAN_13,
    CodeFormat.EAN_13_CHECK_DIGIT,
    CodeFormat.RSS_14,
    CodeFormat.RSS_EXPANDED,
    CodeFormat.UPC_A,
    CodeFormat.UPC_A_CHECK_DIGIT,
    CodeFormat.UPC_E,
    CodeFormat.UPC_E_CHECK_DIGIT,
  ];

  /// One dimensional product code formats
  static const List<CodeFormat> ALL_1D_PRODUCT_FORMATS = [
    CodeFormat.EAN_8,
    CodeFormat.EAN_13,
    CodeFormat.UPC_A,
    CodeFormat.UPC_E,
  ];

  /// One dimensional industrial code formats
  static const List<CodeFormat> ALL_1D_INDUSTRIAL_FORMATS = [
    CodeFormat.CODABAR,
    CodeFormat.CODE_39,
    CodeFormat.CODE_93,
    CodeFormat.CODE_128,
    CodeFormat.RSS_14,
    CodeFormat.RSS_EXPANDED
  ];

  /// Two dimensional code formats
  static const List<CodeFormat> ALL_2D_FORMATS = [
    CodeFormat.AZTEC,
    CodeFormat.DATA_MATRIX,
    CodeFormat.MAXICODE,
    CodeFormat.PDF_417,
    CodeFormat.QR_CODE
  ];

  String get name => describeEnum(this);

  String? get propertyName {
    try {
      switch (this) {
        case CodeFormat.AZTEC:
          return _CODE_FORMAT_PROPERTY_AZTEC_ENABLED;
        case CodeFormat.CODABAR:
          return _CODE_FORMAT_PROPERTY_CODABAR_ENABLED;
        case CodeFormat.CODABAR_START_STOP:
          return _CODE_FORMAT_PROPERTY_CODABAR_START_STOP;
        case CodeFormat.CODE_39:
          return _CODE_FORMAT_PROPERTY_CODE_39_ENABLED;
        case CodeFormat.CODE_39_CHECK_DIGIT:
          return _CODE_FORMAT_PROPERTY_CODE_39_CHECK_DIGIT;
        case CodeFormat.CODE_93:
          return _CODE_FORMAT_PROPERTY_CODE_93_ENABLED;
        case CodeFormat.CODE_128:
          return _CODE_FORMAT_PROPERTY_CODE_128_ENABLED;
        case CodeFormat.DATA_MATRIX:
          return _CODE_FORMAT_PROPERTY_DATAMATRIX_ENABLED;
        case CodeFormat.EAN_8:
          return _CODE_FORMAT_PROPERTY_EAN_8_ENABLED;
        case CodeFormat.EAN_8_CHECK_DIGIT:
          return _CODE_FORMAT_PROPERTY_EAN_8_CHECK_DIGIT;
        case CodeFormat.EAN_13:
          return _CODE_FORMAT_PROPERTY_EAN_13_ENABLED;
        case CodeFormat.EAN_13_CHECK_DIGIT:
          return _CODE_FORMAT_PROPERTY_EAN_13_CHECK_DIGIT;
        case CodeFormat.MAXICODE:
          return _CODE_FORMAT_PROPERTY_MAXICODE_ENABLED;
        case CodeFormat.PDF_417:
          return _CODE_FORMAT_PROPERTY_PDF_417_ENABLED;
        case CodeFormat.QR_CODE:
          return _CODE_FORMAT_PROPERTY_QR_CODE_ENABLED;
        case CodeFormat.RSS_14:
          return _CODE_FORMAT_PROPERTY_RSS_ENABLED;
        case CodeFormat.RSS_EXPANDED:
          return _CODE_FORMAT_PROPERTY_RSS_EXPANDED_ENABLED;
        case CodeFormat.UPC_A:
          return _CODE_FORMAT_PROPERTY_UPC_A_ENABLE;
        case CodeFormat.UPC_A_CHECK_DIGIT:
          return _CODE_FORMAT_PROPERTY_UPC_A_CHECK_DIGIT;
        case CodeFormat.UPC_E:
          return _CODE_FORMAT_PROPERTY_UPC_E_ENABLED;
        case CodeFormat.UPC_E_CHECK_DIGIT:
          return _CODE_FORMAT_PROPERTY_UPC_E_CHECK_DIGIT;
        default:
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  static CodeFormat? valueOf(String name) =>
      CodeFormat.values.firstWhereOrNull((value) => value.name == name);

  /// Returns a Map of Honeywell's Barcode formats properties enabled by default
  /// according to the List of CodeFormat specified.
  /// [codeFormats] the List of CodeFormat enums to be converted to Honeywell properties
  /// IMPORTANT:
  /// - The codeFormats not specified in the [codeFormats] list will be set to disabled
  /// - Empty codeFormats list means no properties at all
  /// This function is Deprecated, use [getAsPropertiesComplement(...)] instead
  @Deprecated(
      "This function is Deprecated, use [getAsPropertiesComplement(...)]")
  static Map<String?, dynamic> getFormatsAsProperties(
      final List<CodeFormat> codeFormats) {
    if (codeFormats.isEmpty) return {};

    Map<String?, dynamic> mapProperties = {};
    for (var codeFormat in codeFormats) {
      mapProperties[codeFormat.propertyName] = true;
    }
    for (var codeFormat in CodeFormat.values) {
      String? propertyName = codeFormat.propertyName;
      if (propertyName != null) {
        mapProperties[propertyName] = mapProperties.containsKey(propertyName);
      }
    }
    return mapProperties;
  }

  /// Returns a Map of Honeywell's Barcode formats properties according to the
  /// List of CodeFormat specified and the [enabled] value which is true by default.
  /// [codeFormats] the List of CodeFormat enums to be converted to Honeywell properties
  /// [enabled] the value to be set to the format property, true or false
  static Map<String?, dynamic> getAsProperties(
      final List<CodeFormat> codeFormats,
      {bool enabled = true}) {
    if (codeFormats.isEmpty) return {};
    Map<String?, dynamic> mapProperties = {};
    for (var codeFormat in codeFormats) {
      mapProperties[codeFormat.propertyName] = enabled;
    }
    return mapProperties;
  }

  /// Returns a Map of Honeywell's Barcode formats properties according to the
  /// List of CodeFormat specified and the [enabled] value which is true by default.
  /// This function is useful when you want to enable some codeFormats and
  /// disable the rest and the other way around.
  /// [codeFormats] the List of CodeFormat enums to be converted to Honeywell properties
  /// [enabled] the value to be set to the format property, true or false.
  /// IMPORTANT:
  /// - The codeFormats not specified in the [codeFormats] list will be set to the opposite of enabled like !enabled
  static Map<String?, dynamic> getAsPropertiesComplement(
      List<CodeFormat>? codeFormats,
      {bool enabled = true}) {
    codeFormats ??= [];

    Map<String?, dynamic> mapProperties =
        getAsProperties(codeFormats, enabled: enabled);
    for (var codeFormat in CodeFormat.values) {
      String? propertyName = codeFormat.propertyName;
      if (propertyName != null && !mapProperties.containsKey(propertyName)) {
        mapProperties[propertyName] = !enabled;
      }
    }
    return mapProperties;
  }
}
