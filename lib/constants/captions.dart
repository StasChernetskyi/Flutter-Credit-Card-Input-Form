import 'package:flutter/material.dart';

class Captions {
  final Map<String, String> _default = {
    'PREV': 'Prev',
    'NEXT': 'Next',
    'DONE': 'Done',
    'CARD_NUMBER': 'Card Number',
    'CARDHOLDER_NAME': 'Cardholder Name',
    'VALID_THRU': 'Valid Thru',
    'SECURITY_CODE_CVC': 'Security Code (CVC)',
    'NAME_SURNAME': 'Name Surname',
    'MM_YY': 'MM/YY',
    'RESET': 'Reset',
  };

  final Map<String, String> _defaultAr = {
    'PREV': 'السّابق',
    'NEXT': 'التّالي',
    'DONE': 'العمليّة نُفّذت ',
    'CARD_NUMBER': 'رقم البطاقة',
    'CARDHOLDER_NAME': 'اسم حامل البطاقة ',
    'VALID_THRU': 'صالحة لغاية',
    'SECURITY_CODE_CVC': 'الشّيفرة السّرّيّة في ظهر البطاقة',
    'NAME_SURNAME': 'الاسم الأوّل و اسم العائلة',
    'MM_YY': 'MM/YY',
    'RESET': 'اعادة تحميل',
  };

  Map<String, String> _captions;

  Captions({customCaptions, Locale locale}) {
    _captions = {};
    if (locale == Locale("ar")) {
      _captions.addAll(_defaultAr);
    } else {
      _captions.addAll(_default);
    }
    if (customCaptions != null) _captions.addAll(customCaptions);
  }

  String getCaption(String key) {
    return _captions.containsKey(key) ? _captions[key] : key;
  }
}
