// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'دلي سويقت';

  @override
  String get hello_world => 'مرحباً بالعالم!';

  @override
  String welcome(String appName) {
    return 'مرحباً بك في $appName';
  }

  @override
  String get error_general => 'حدث خطأ. يرجى المحاولة مرة أخرى.';

  @override
  String get error_network =>
      'خطأ في الاتصال. يرجى التحقق من اتصالك بالإنترنت.';

  @override
  String get error_server => 'خطأ في الخادم. يرجى المحاولة لاحقاً.';

  @override
  String get common_ok => 'موافق';

  @override
  String get common_cancel => 'إلغاء';

  @override
  String get common_yes => 'نعم';

  @override
  String get common_no => 'لا';

  @override
  String get common_save => 'حفظ';

  @override
  String get common_delete => 'حذف';

  @override
  String get common_edit => 'تعديل';

  @override
  String get auth_login => 'تسجيل الدخول';

  @override
  String get auth_logout => 'تسجيل الخروج';

  @override
  String get auth_email => 'البريد الإلكتروني';

  @override
  String get auth_password => 'كلمة المرور';

  @override
  String get auth_forgotPassword => 'نسيت كلمة المرور؟';

  @override
  String get auth_signUp => 'إنشاء حساب';

  @override
  String get auth_dontHaveAccount => 'ليس لديك حساب؟ ';

  @override
  String get auth_alreadyHaveAccount => 'لديك حساب بالفعل؟ ';
}
