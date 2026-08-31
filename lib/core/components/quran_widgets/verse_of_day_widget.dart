import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/core/extensions/theme_extensions.dart';

class VerseOfDayWidget extends StatefulWidget {
  const VerseOfDayWidget({
    this.width,
    this.height,
    this.primaryColor,
    this.secondaryColor,
    super.key,
  });

  final double? width;
  final double? height;
  final Color? primaryColor;
  final Color? secondaryColor;

  @override
  State<VerseOfDayWidget> createState() => _VerseOfDayWidgetState();
}

class _VerseOfDayWidgetState extends State<VerseOfDayWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Timer _timer;
  int _currentVerseIndex = 0;

  final List<QuranVerse> _verses = [
    QuranVerse(
      arabicText: 'إِنَّ مَعَ الْعُسْرِ يُسْرًا',
      translation: 'فإن مع العسر يسراً، إن مع العسر يسراً',
      surahName: 'الشرح',
      ayahNumber: 6,
    ),
    QuranVerse(
      arabicText: 'وَقُل رَّبِّ زِدْنِي عِلْمًا',
      translation: 'وقل ربِ زدني علماً نافعاً',
      surahName: 'طه',
      ayahNumber: 114,
    ),
    QuranVerse(
      arabicText: 'فَاذْكُرُونِي أَذْكُرْكُمْ',
      translation: 'فاذكروني بطاعتي أذكركم بمغفرتي',
      surahName: 'البقرة',
      ayahNumber: 152,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();

    _timer = Timer.periodic(const Duration(seconds: 8), (timer) {
      if (mounted) {
        setState(() {
          _currentVerseIndex = (_currentVerseIndex + 1) % _verses.length;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentVerse = _verses[_currentVerseIndex];
    final activeColor = widget.primaryColor ?? context.primaryColor;

    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 180.h,
      margin: EdgeInsets.symmetric(vertical: 16.h),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  context.theme.cardColor,
                  context.theme.cardColor.withOpacity(0.8),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
              border: Border.all(
                color: activeColor.withOpacity(0.1),
                width: 1,
              ),
            ),
          ),
          
          Positioned.fill(
            child: Opacity(
              opacity: 0.03,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24.r),
                child: CustomPaint(
                  painter: IslamicPatternPainter(
                    animationValue: _controller.value,
                    color: activeColor,
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.auto_awesome,
                          color: activeColor,
                          size: 16.sp,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          'آية اليوم',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w800,
                            color: activeColor,
                            fontFamily: 'ios-1',
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'سورة ${currentVerse.surahName}',
                      style: TextStyle(
                        fontSize: 11.sp,
                        color: context.theme.hintColor,
                        fontFamily: 'ios-1',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  currentVerse.arabicText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w900,
                    color: context.theme.textTheme.bodyLarge?.color,
                    fontFamily: 'Arabic',
                    height: 1.6,
                  ),
                ),
                const Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                  decoration: BoxDecoration(
                    color: activeColor.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Text(
                    currentVerse.translation,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: activeColor,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'ios-1',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class QuranVerse {
  QuranVerse({
    required this.arabicText,
    required this.translation,
    required this.surahName,
    required this.ayahNumber,
  });
  final String arabicText;
  final String translation;
  final String surahName;
  final int ayahNumber;
}

class IslamicPatternPainter extends CustomPainter {
  IslamicPatternPainter({
    required this.animationValue,
    required this.color,
  });
  final double animationValue;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final radius = size.width * 0.4;

    canvas.save();
    canvas.translate(centerX, centerY);
    canvas.rotate(animationValue * 2 * math.pi * 0.1);

    for (var i = 0; i < 8; i++) {
      canvas.rotate(math.pi / 4);
      final path = Path();
      path.moveTo(0, -radius);
      path.quadraticBezierTo(radius * 0.5, -radius * 0.8, radius, 0);
      path.quadraticBezierTo(radius * 0.5, radius * 0.8, 0, radius);
      path.quadraticBezierTo(-radius * 0.5, radius * 0.8, -radius, 0);
      path.quadraticBezierTo(-radius * 0.5, -radius * 0.8, 0, -radius);
      canvas.drawPath(path, paint);
    }
    
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class WisdomVerseWidget extends StatelessWidget {
  const WisdomVerseWidget({this.width, this.height, super.key});
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) => VerseOfDayWidget(width: width, height: height, primaryColor: Colors.blue);
}

class HopeVerseWidget extends StatelessWidget {
  const HopeVerseWidget({this.width, this.height, super.key});
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) => VerseOfDayWidget(width: width, height: height, primaryColor: Colors.green);
}
