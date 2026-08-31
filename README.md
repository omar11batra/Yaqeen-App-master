<div align="center">

# 📖 Yaqeen App – Islamic Comprehensive Encyclopedia
### تطبيق يقين – الموسوعة الدينية الشاملة

<p align="center">
  <b>Your comprehensive, modern guide for the Holy Qur'an, Athkar, Prayer Times, Qibla, and Daily Worship.</b>
</p>

[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![BLoC](https://img.shields.io/badge/State%20Management-BLoC-blue?style=for-the-badge)](https://bloclibrary.dev)
[![Architecture](https://img.shields.io/badge/Architecture-Clean%20Architecture-teal?style=for-the-badge)](#-architecture--structure)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-green?style=for-the-badge)](#)
[![License](https://img.shields.io/badge/License-MIT-amber?style=for-the-badge)](LICENSE)

</div>

---

## 📱 Screenshots

<div align="center">
  <table>
    <tr>
      <td align="center" width="33%">
        <img src="./screenshots/1.jpg" alt="Home Screen & Prayer Times" width="100%" style="border-radius: 12px; box-shadow: 0 4px 10px rgba(0,0,0,0.15);" />
        <br />
        <b>Home & Prayer Times</b>
      </td>
      <td align="center" width="33%">
        <img src="./screenshots/2.jpg" alt="Holy Quran & Recitations" width="100%" style="border-radius: 12px; box-shadow: 0 4px 10px rgba(0,0,0,0.15);" />
        <br />
        <b>Holy Qur'an & Audio</b>
      </td>
      <td align="center" width="33%">
        <img src="./screenshots/3.jpg" alt="Athkar, Duas & Library" width="100%" style="border-radius: 12px; box-shadow: 0 4px 10px rgba(0,0,0,0.15);" />
        <br />
        <b>Athkar & Islamic Library</b>
      </td>
    </tr>
  </table>
</div>

---

## ✨ Key Features

- 📖 **Holy Qur'an Reading:** Authentic Uthmanic script with stop signs, Tajweed rules, customizable font sizing, and dedicated reading modes.
- 🎧 **Audio Recitations:** High-quality recitations by renowned international Qaris with offline downloading capabilities.
- ⏰ **Prayer Times & Athan:** Precise astronomical prayer time calculation based on GPS location with customizable Athan notifications and next-prayer countdown.
- 🕋 **Qibla Compass:** Accurate real-time Qibla direction finder with distance calculation to the Holy Kaaba.
- 📿 **Hisn Al-Muslim & Athkar:** Comprehensive collection of morning, evening, and post-prayer Athkar alongside a smart digital Tasbeeh counter.
- 🔍 **Smart Search:** Lightning-fast Qur'anic search engine supporting searches with and without Arabic diacritics (Tashkeel).
- 🔖 **Bookmarks & Favorites:** Save your reading progress, favorite Surahs, and Ayahs for instant access.
- ✨ **99 Names of Allah (Asma-ul-Husna):** Interactive exploration of the 99 Names of Allah with meanings and spiritual benefits.
- 📚 **Islamic Library:** Rich repository of Islamic books, Hadiths, and references ready for reading.
- 🌓 **Dark & Light Modes:** Elegant, modern themes crafted for optimal reading comfort.
- 📱 **Offline Functionality:** Smart local caching (SQLite & SharedPreferences) for seamless offline access.

---

## 🛠️ Tech Stack & Architecture

- **Framework:** [Flutter](https://flutter.dev) (Dart SDK `^3.6.0`)
- **Architecture:** Clean Architecture (Presentation, Domain, Data Layers)
- **State Management:** [Flutter BLoC](https://pub.dev/packages/flutter_bloc) & RxDart
- **Local Database:** [SQLite (sqflite)](https://pub.dev/packages/sqflite) & SharedPreferences
- **Networking & API:** [Dio](https://pub.dev/packages/dio) & RESTful Services
- **Audio Engine:** [just_audio](https://pub.dev/packages/just_audio), [audio_video_progress_bar](https://pub.dev/packages/audio_video_progress_bar)
- **Location & Calculations:** [Geolocator](https://pub.dev/packages/geolocator), [Adhan](https://pub.dev/packages/adhan), [Flutter Qiblah](https://pub.dev/packages/flutter_qiblah)
- **Dependency Injection:** [GetIt](https://pub.dev/packages/get_it)
- **UI & Animations:** [flutter_screenutil](https://pub.dev/packages/flutter_screenutil), [flutter_animate](https://pub.dev/packages/flutter_animate), [flutter_svg](https://pub.dev/packages/flutter_svg)

---

## 📂 Project Structure

```
lib/
├── core/                   # Core utilities, base themes, services & shared components
│   ├── components/         # Reusable UI widgets
│   ├── extensions/         # Dart & Flutter extensions
│   ├── services/           # Notifications, Audio, and Database services
│   ├── shared/             # Assets managers, constants & configs
│   ├── theme/              # Color palettes, typography & themes
│   └── util/               # Helper functions
└── features/               # Feature-first Clean Architecture modules
    ├── azkar/              # Athkar and Tasbeeh module
    ├── books/              # Islamic Library & books module
    ├── categories/         # Content categorization
    ├── download/           # Media & file download manager
    ├── home/               # Dashboard & home screen
    ├── prayer_time/        # Prayer calculation & Qibla compass
    ├── quran/              # Qur'an browsing & reading engine
    ├── quran_audio/        # Audio streaming & media player
    ├── quran_plan/         # Khatmah reading plans
    └── setting/            # Settings and app information
```

---

## 🚀 Getting Started

### Prerequisites:
- [Flutter SDK](https://flutter.dev/docs/get-started/install) (`3.6.0` or higher).
- An IDE such as [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio).

### Installation Steps:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/omar11batra/Yaqeen-App-master.git
   cd Yaqeen-App-master
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Generate required code (Build Runner):**
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Run the application:**
   ```bash
   flutter run
   ```

---

## 👨‍💻 Author & Developer

Developed and designed by:
**Eng. Omar Abdulaziz Al-Batra** *(المهندس عمر عبدالعزيز البتراء)*

- 🌐 **GitHub:** [@omar11batra](https://github.com/omar11batra)
- 🌐 **Facebook:** [omar11batra](https://facebook.com/omar11batra)

---

## 📄 License

This project is licensed under the [MIT License](LICENSE) - feel free to use and adapt it for personal and educational purposes.
