import 'package:flutter/services.dart';

/// Input formatters for the CheckListas design system.
///
/// This class provides common text input formatters for form validation
/// and user input formatting throughout the application.
///
/// Usage:
/// ```dart
/// TextField(
///   inputFormatters: [
///     CheckListasInputFormatters.phoneNumber,
///     CheckListasInputFormatters.uppercase,
///   ],
/// )
/// ```
class CheckListasInputFormatters {
  // ===== TEXT TRANSFORMATION =====
  /// Converts all input to uppercase
  static final TextInputFormatter uppercase = UpperCaseTextFormatter();

  /// Converts all input to lowercase
  static final TextInputFormatter lowercase = LowerCaseTextFormatter();

  /// Capitalizes the first letter of each word
  static final TextInputFormatter capitalizeWords = CapitalizeWordsFormatter();

  // ===== NUMERIC FORMATTERS =====
  /// Only allows digits (0-9)
  static final TextInputFormatter digitsOnly = FilteringTextInputFormatter.digitsOnly;

  /// Only allows alphabetic characters and spaces
  static final TextInputFormatter lettersOnly = FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\s]'));

  /// Only allows alphanumeric characters
  static final TextInputFormatter alphanumericOnly = FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9]'));

  // ===== SPECIFIC FORMATTERS =====
  /// Formats phone numbers (Brazilian format)
  static final TextInputFormatter phoneNumber = PhoneNumberFormatter();

  /// Formats CPF (Brazilian individual taxpayer ID)
  static final TextInputFormatter cpf = CPFFormatter();

  /// Formats CNPJ (Brazilian company taxpayer ID)
  static final TextInputFormatter cnpj = CNPJFormatter();

  /// Formats CEP (Brazilian postal code)
  static final TextInputFormatter cep = CEPFormatter();

  /// Formats credit card numbers
  static final TextInputFormatter creditCard = CreditCardFormatter();

  /// Formats expiration dates (MM/YY)
  static final TextInputFormatter expirationDate = ExpirationDateFormatter();

  // ===== LENGTH LIMITERS =====
  /// Limits input to 11 characters (CPF length)
  static final TextInputFormatter cpfLength = LengthLimitingTextInputFormatter(11);

  /// Limits input to 14 characters (CNPJ length)
  static final TextInputFormatter cnpjLength = LengthLimitingTextInputFormatter(14);

  /// Limits input to 8 characters (CEP length)
  static final TextInputFormatter cepLength = LengthLimitingTextInputFormatter(8);

  /// Limits input to 16 characters (credit card length)
  static final TextInputFormatter creditCardLength = LengthLimitingTextInputFormatter(16);
}

/// Uppercase text formatter
class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(text: newValue.text.toUpperCase(), selection: newValue.selection);
  }
}

/// Lowercase text formatter
class LowerCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(text: newValue.text.toLowerCase(), selection: newValue.selection);
  }
}

/// Capitalize words formatter
class CapitalizeWordsFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) return newValue;

    final words = newValue.text.split(' ');
    final capitalizedWords = words.map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    });

    return TextEditingValue(text: capitalizedWords.join(' '), selection: newValue.selection);
  }
}

/// Phone number formatter (Brazilian format)
class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final text = newValue.text.replaceAll(RegExp(r'[^\d]'), '');

    if (text.isEmpty) return newValue;

    final buffer = StringBuffer();
    // final selectionIndex = newValue.selection.baseOffset;

    if (text.length <= 2) {
      buffer.write('($text');
    } else if (text.length <= 6) {
      buffer.write('(${text.substring(0, 2)}) ${text.substring(2)}');
    } else if (text.length <= 10) {
      buffer.write('(${text.substring(0, 2)}) ${text.substring(2, 6)}-${text.substring(6)}');
    } else {
      buffer.write('(${text.substring(0, 2)}) ${text.substring(2, 7)}-${text.substring(7, 11)}');
    }

    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}

/// CPF formatter (Brazilian individual taxpayer ID)
class CPFFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final text = newValue.text.replaceAll(RegExp(r'[^\d]'), '');

    if (text.isEmpty) return newValue;

    final buffer = StringBuffer();

    if (text.length <= 3) {
      buffer.write(text);
    } else if (text.length <= 6) {
      buffer.write('${text.substring(0, 3)}.${text.substring(3)}');
    } else if (text.length <= 9) {
      buffer.write('${text.substring(0, 3)}.${text.substring(3, 6)}.${text.substring(6)}');
    } else {
      buffer.write('${text.substring(0, 3)}.${text.substring(3, 6)}.${text.substring(6, 9)}-${text.substring(9, 11)}');
    }

    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}

/// CNPJ formatter (Brazilian company taxpayer ID)
class CNPJFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final text = newValue.text.replaceAll(RegExp(r'[^\d]'), '');

    if (text.isEmpty) return newValue;

    final buffer = StringBuffer();

    if (text.length <= 2) {
      buffer.write(text);
    } else if (text.length <= 5) {
      buffer.write('${text.substring(0, 2)}.${text.substring(2)}');
    } else if (text.length <= 8) {
      buffer.write('${text.substring(0, 2)}.${text.substring(2, 5)}.${text.substring(5)}');
    } else if (text.length <= 12) {
      buffer.write('${text.substring(0, 2)}.${text.substring(2, 5)}.${text.substring(5, 8)}/${text.substring(8)}');
    } else {
      buffer.write(
        '${text.substring(0, 2)}.${text.substring(2, 5)}.${text.substring(5, 8)}/${text.substring(8, 12)}-${text.substring(12, 14)}',
      );
    }

    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}

/// CEP formatter (Brazilian postal code)
class CEPFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final text = newValue.text.replaceAll(RegExp(r'[^\d]'), '');

    if (text.isEmpty) return newValue;

    final buffer = StringBuffer();

    if (text.length <= 5) {
      buffer.write(text);
    } else {
      buffer.write('${text.substring(0, 5)}-${text.substring(5, 8)}');
    }

    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}

/// Credit card formatter
class CreditCardFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final text = newValue.text.replaceAll(RegExp(r'[^\d]'), '');

    if (text.isEmpty) return newValue;

    final buffer = StringBuffer();

    for (var i = 0; i < text.length; i++) {
      if (i > 0 && i % 4 == 0) {
        buffer.write(' ');
      }
      buffer.write(text[i]);
    }

    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}

/// Expiration date formatter (MM/YY)
class ExpirationDateFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final text = newValue.text.replaceAll(RegExp(r'[^\d]'), '');

    if (text.isEmpty) return newValue;

    final buffer = StringBuffer();

    if (text.length <= 2) {
      buffer.write(text);
    } else {
      buffer.write('${text.substring(0, 2)}/${text.substring(2, 4)}');
    }

    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}
