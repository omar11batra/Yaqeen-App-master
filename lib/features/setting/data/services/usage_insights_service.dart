import 'package:quran_app/core/cash/cache_service.dart';

/// Service to manage usage insights data
class UsageInsightsService {
  UsageInsightsService._();
  static final UsageInsightsService instance = UsageInsightsService._();

  final CacheService _cache = CacheService();

  // Keys
  static const String _firstUseDateKey = 'first_use_date';
  static const String _lastOpenDateKey = 'last_open_date';
  static const String _streakCountKey = 'streak_count';
  static const String _lastOpenedContentKey = 'last_opened_content';
  static const String _totalUsageTimeKey = 'total_usage_time_seconds';
  static const String _appStartTimeKey = 'app_start_time';
  
  // Section visit keys
  static const String _sectionQuranKey = 'section_quran';
  static const String _sectionAudioKey = 'section_audio';
  static const String _sectionPrayerKey = 'section_prayer';
  static const String _sectionQiblahKey = 'section_qiblah';
  static const String _sectionThikrKey = 'section_thikr';
  static const String _sectionBooksKey = 'section_books';

  /// Initialize first use date if not exists
  Future<void> initializeFirstUseDate() async {
    if (_cache.getString(_firstUseDateKey) == null) {
      await _cache.setString(
        _firstUseDateKey,
        DateTime.now().toIso8601String(),
      );
    }
  }

  /// Update streak count based on last open date
  Future<void> updateStreak() async {
    final now = DateTime.now();
    final lastOpenDateStr = _cache.getString(_lastOpenDateKey);
    
    if (lastOpenDateStr == null) {
      // First time opening
      await _cache.setString(_lastOpenDateKey, now.toIso8601String());
      await _cache.setInt(_streakCountKey, 1);
      return;
    }

    final lastOpenDate = DateTime.parse(lastOpenDateStr);
    final today = DateTime(now.year, now.month, now.day);
    final lastOpen = DateTime(lastOpenDate.year, lastOpenDate.month, lastOpenDate.day);
    
    final difference = today.difference(lastOpen).inDays;
    
    if (difference == 0) {
      // Same day, no change
      return;
    } else if (difference == 1) {
      // Consecutive day, increment streak
      final currentStreak = _cache.getInt(_streakCountKey) ?? 0;
      await _cache.setInt(_streakCountKey, currentStreak + 1);
    } else {
      // More than one day, reset streak
      await _cache.setInt(_streakCountKey, 1);
    }
    
    // Update last open date
    await _cache.setString(_lastOpenDateKey, now.toIso8601String());
  }

  /// Record section visit
  Future<void> recordSectionVisit(String sectionKey) async {
    final currentCount = _cache.getInt(sectionKey) ?? 0;
    await _cache.setInt(sectionKey, currentCount + 1);
  }

  /// Get most visited section
  String getMostVisitedSection() {
    final quran = _cache.getInt(_sectionQuranKey) ?? 0;
    final audio = _cache.getInt(_sectionAudioKey) ?? 0;
    final prayer = _cache.getInt(_sectionPrayerKey) ?? 0;
    final qiblah = _cache.getInt(_sectionQiblahKey) ?? 0;
    final thikr = _cache.getInt(_sectionThikrKey) ?? 0;
    final books = _cache.getInt(_sectionBooksKey) ?? 0;

    final Map<String, int> sections = {
      'quran': quran,
      'audio': audio,
      'prayer': prayer,
      'qiblah': qiblah,
      'thikr': thikr,
      'books': books,
    };

    final maxEntry = sections.entries.reduce(
      (a, b) => a.value > b.value ? a : b,
    );

    if (maxEntry.value == 0) {
      return 'لا توجد زيارات بعد';
    }

    final sectionNames = {
      'quran': 'القرآن الكريم',
      'audio': 'الاستماع',
      'prayer': 'أوقات الصلاة',
      'qiblah': 'القبلة',
      'thikr': 'الأذكار',
      'books': 'المكتبة',
    };

    return sectionNames[maxEntry.key] ?? 'غير محدد';
  }

  /// Set last opened content
  Future<void> setLastOpenedContent(String content) async {
    await _cache.setString(_lastOpenedContentKey, content);
  }

  /// Get last opened content
  String getLastOpenedContent() {
    return _cache.getString(_lastOpenedContentKey) ?? 'لا يوجد محتوى';
  }

  /// Record app start time
  Future<void> recordAppStart() async {
    await _cache.setInt(_appStartTimeKey, DateTime.now().millisecondsSinceEpoch);
  }

  /// Record app end time and update total usage
  Future<void> recordAppEnd() async {
    final startTimeMs = _cache.getInt(_appStartTimeKey);
    if (startTimeMs != null) {
      final startTime = DateTime.fromMillisecondsSinceEpoch(startTimeMs);
      final duration = DateTime.now().difference(startTime);
      final currentTotal = _cache.getInt(_totalUsageTimeKey) ?? 0;
      await _cache.setInt(_totalUsageTimeKey, currentTotal + duration.inSeconds);
      await _cache.remove(_appStartTimeKey);
    }
  }

  /// Get total usage time in seconds
  int getTotalUsageTimeSeconds() {
    return _cache.getInt(_totalUsageTimeKey) ?? 0;
  }

  /// Format usage time to readable string
  String formatUsageTime(int seconds) {
    if (seconds == 0) {
      return 'لا يوجد استخدام';
    }

    final hours = seconds ~/ 3600;
    final minutes = (seconds % 3600) ~/ 60;

    if (hours > 0 && minutes > 0) {
      return '$hours ساعة و $minutes دقيقة';
    } else if (hours > 0) {
      return '$hours ساعة';
    } else if (minutes > 0) {
      return '$minutes دقيقة';
    } else {
      return 'أقل من دقيقة';
    }
  }

  /// Get first use date
  DateTime? getFirstUseDate() {
    final dateStr = _cache.getString(_firstUseDateKey);
    if (dateStr == null) return null;
    try {
      return DateTime.parse(dateStr);
    } catch (e) {
      return null;
    }
  }

  /// Format date to readable string
  String formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date).inDays;

    if (difference == 0) {
      return 'اليوم';
    } else if (difference == 1) {
      return 'أمس';
    } else if (difference < 7) {
      return 'منذ $difference أيام';
    } else if (difference < 30) {
      final weeks = difference ~/ 7;
      return 'منذ $weeks ${weeks == 1 ? 'أسبوع' : 'أسابيع'}';
    } else if (difference < 365) {
      final months = difference ~/ 30;
      return 'منذ $months ${months == 1 ? 'شهر' : 'أشهر'}';
    } else {
      final years = difference ~/ 365;
      return 'منذ $years ${years == 1 ? 'سنة' : 'سنوات'}';
    }
  }

  /// Get streak count
  int getStreakCount() {
    return _cache.getInt(_streakCountKey) ?? 0;
  }
}
