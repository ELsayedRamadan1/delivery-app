// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Deliswift';

  @override
  String get hello_world => 'Hello World!';

  @override
  String welcome(String appName) {
    return 'Welcome to $appName';
  }

  @override
  String get error_general => 'An error occurred. Please try again.';

  @override
  String get error_network => 'Network error. Please check your connection.';

  @override
  String get error_server => 'Server error. Please try again later.';

  @override
  String get common_ok => 'OK';

  @override
  String get common_cancel => 'Cancel';

  @override
  String get common_yes => 'Yes';

  @override
  String get common_no => 'No';

  @override
  String get common_save => 'Save';

  @override
  String get common_delete => 'Delete';

  @override
  String get common_edit => 'Edit';

  @override
  String get auth_login => 'Login';

  @override
  String get auth_logout => 'Logout';

  @override
  String get auth_email => 'Email';

  @override
  String get auth_password => 'Password';

  @override
  String get auth_forgotPassword => 'Forgot Password?';

  @override
  String get auth_signUp => 'Sign Up';

  @override
  String get auth_dontHaveAccount => 'Don\'t have an account? ';

  @override
  String get auth_alreadyHaveAccount => 'Already have an account? ';
}
