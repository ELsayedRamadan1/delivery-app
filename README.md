# DeliSwift - Food & Goods Delivery App

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter">
  <img src="https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black" alt="Firebase">
  <img src="https://img.shields.io/badge/Bloc-2B579A?style=for-the-badge&logo=bloc&logoColor=white" alt="Bloc">
</p>

A comprehensive delivery application built with Flutter and Firebase. Features a modern UI with interactive screens, real-time notifications, and seamless user experience for both customers and delivery personnel.

## ✨ Features

- 🛍️ Browse restaurants and shops
- 🚀 Fast and reliable delivery service
- 📱 Beautiful and intuitive user interface
- 🔔 Real-time order tracking
- 🔐 Secure authentication
- 💬 In-app chat support
- 📊 Order history and tracking
- 🌍 Multi-language support

## 🏗️ الهيكل التقني للتطبيق

### 🔹 البنية المعمارية (Architecture)
- تم بناء التطبيق باستخدام **Clean Architecture** مع **BLoC Pattern** لإدارة الحالة
- **Presentation Layer**: تحتوي على الواجهات والشاشات
- **Business Logic Layer**: تحتوي على الـ BLoCs والـ Cubits
- **Data Layer**: تتعامل مع استرجاع وحفظ البيانات
- **Domain Layer**: تحتوي على الكيانات وقواعد العمل (Use Cases)

### 🔹 المكونات الرئيسية
- **Firebase Authentication**: لتسجيل الدخول وإنشاء الحسابات
- **Cloud Firestore**: قاعدة البيانات المستخدمة لتخزين بيانات المطاعم والطلبات
- **Firebase Storage**: لتخزين الصور والملفات
- **Firebase Cloud Messaging**: لإرسال الإشعارات الفورية
- **Google Maps API**: لتتبع المندوبين وعرض المواقع

### 🔹 حزم Flutter المستخدمة
- **bloc & flutter_bloc**: لإدارة حالة التطبيق
- **firebase_core & firebase_auth**: للمصادقة
- **cloud_firestore**: لقاعدة البيانات
- **google_maps_flutter**: لخدمات الخرائط
- **cached_network_image**: لعرض الصور بكفاءة
- **shared_preferences**: لحفظ الإعدادات المحلية
- **intl**: للتعامل مع التواريخ والأرقام
- **dio**: لطلبات الشبكة

### 🔹 هيكل المشروع
```
lib/
├── core/               # الملفات الأساسية المشتركة
│   ├── constants/     # الثوابت العامة
│   ├── errors/        # معالجة الأخطاء
│   ├── utils/         # الأدوات المساعدة
│   └── widgets/       # الـ Widgets المشتركة
│
├── features/          # الميزات الرئيسية للتطبيق
│   ├── auth/          # المصادقة
│   ├── home/          # الصفحة الرئيسية
│   ├── orders/        # إدارة الطلبات
│   ├── profile/       # الملف الشخصي
│   └── ...
│
├── data/              # طبقة البيانات
│   ├── datasources/   # مصادر البيانات
│   ├── models/       # النماذج
│   └── repositories/  # الريبوزيتوريات
│
└── presentation/      # طبقة العرض
    ├── bloc/         # إدارة الحالة
    ├── pages/        # الشاشات
    └── widgets/      # الـ Widgets الخاصة بكل شاشة
```

### 🔹 آلية العمل
1. يقوم المستخدم بتسجيل الدخول عبر Firebase Authentication
2. يتم جلب البيانات من Firestore وعرضها في الواجهة
3. يتم تحديث حالة الطلبات في الوقت الفعلي باستخدام StreamBuilder
4. يتم إرسال الإشعارات للمستخدمين عند تغيير حالة الطلب
5. يتم تخزين البيانات المحلية باستخدام SharedPreferences

### 🔹 نقاط القوة
- تصميم متجاوب يعمل على جميع أحجام الشاشات
- تحديث البيانات في الوقت الفعلي
- واجهة مستخدم سلسة وسهلة الاستخدام
- كود منظم وسهل الصيانة

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (latest stable version)
- Android Studio / Xcode (for emulator/simulator)
- Firebase account

### Installation

1. Clone the repository
```bash
git clone https://github.com/yourusername/deliswift.git
cd deliswift
```

2. Get dependencies
```bash
flutter pub get
```

3. Configure Firebase
   - Add your `google-services.json` to `android/app/`
   - Add your `GoogleService-Info.plist` to iOS/Runner

4. Run the app
```bash
flutter run
```

## 🛠️ Built With

- [Flutter](https://flutter.dev/) - Beautiful native apps in record time
- [Firebase](https://firebase.google.com/) - Backend services
- [BLoC](https://bloclibrary.dev/) - State management
- [Lottie](https://lottiefiles.com/) - Beautiful animations

## 📱 Screenshots

| | | |
|:-------------------------:|:-------------------------:|:-------------------------:|
| <img src="screenshots/screen1.png" width=200> | <img src="screenshots/screen2.png" width=200> | <img src="screenshots/screen3.png" width=200> |

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📧 Contact

Your Name - [@your_twitter](https://twitter.com/your_twitter) - your.email@example.com

Project Link: [https://github.com/yourusername/deliswift](https://github.com/yourusername/deliswift)
