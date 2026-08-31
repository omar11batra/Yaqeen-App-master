import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/core/extensions/theme_extensions.dart';
import 'package:quran_app/features/prayer_time/data/model/time_prayer_model.dart';

class NextPrayerCountdownWidget extends StatefulWidget {
  const NextPrayerCountdownWidget({
    required this.nextPrayer,
    required this.remainingTime,
    super.key,
  });
  final TimePrayerModel nextPrayer;
  final Duration remainingTime;

  @override
  State<NextPrayerCountdownWidget> createState() =>
      _NextPrayerCountdownWidgetState();
}

class _NextPrayerCountdownWidgetState extends State<NextPrayerCountdownWidget>
    with TickerProviderStateMixin {
  late Timer _timer;
  late Duration _currentRemainingTime;

  @override
  void initState() {
    super.initState();
    _currentRemainingTime = widget.remainingTime;
    _startCountdown();
  }

  void _startCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          if (_currentRemainingTime.inSeconds > 0) {
            _currentRemainingTime =
                Duration(seconds: _currentRemainingTime.inSeconds - 1);
          } else {
            timer.cancel();
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.h),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24.r),
        child: Container(
          height: 140.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                context.primaryColor,
                context.primaryColor.withOpacity(0.8),
                context.theme.colorScheme.secondary.withOpacity(0.9),
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: context.primaryColor.withOpacity(0.3),
                blurRadius: 15,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                top: -30.h,
                right: -30.w,
                child: Container(
                  width: 120.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                bottom: -20.h,
                left: -20.w,
                child: Container(
                  width: 80.w,
                  height: 80.h,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.05),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.w),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Text(
                              'الصلاة القادمة',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'ios-1',
                              ),
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Text(
                            widget.nextPrayer.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.sp,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'ios-1',
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Row(
                            children: [
                              Icon(Icons.access_time_filled_rounded, 
                                size: 14.sp, 
                                color: Colors.white.withOpacity(0.7)
                              ),
                              SizedBox(width: 4.w),
                              Text(
                                widget.nextPrayer.time,
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'ios-1',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildCountdownTimer(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCountdownTimer() {
    final hours = _currentRemainingTime.inHours;
    final minutes = _currentRemainingTime.inMinutes.remainder(60);
    final seconds = _currentRemainingTime.inSeconds.remainder(60);

    return Container(
      padding: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.2),
        borderRadius: BorderRadius.circular(24.r),
        border: Border.all(
          color: Colors.white.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildTimeUnit(hours.toString().padLeft(2, '0'), 'س'),
          _buildSeparator(),
          _buildTimeUnit(minutes.toString().padLeft(2, '0'), 'د'),
          _buildSeparator(),
          _buildTimeUnit(seconds.toString().padLeft(2, '0'), 'ث'),
        ],
      ),
    );
  }

  Widget _buildTimeUnit(String value, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          value,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.sp,
            fontWeight: FontWeight.w800,
            fontFamily: 'ios-1',
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontSize: 10.sp,
            fontWeight: FontWeight.w600,
            fontFamily: 'ios-1',
          ),
        ),
      ],
    );
  }

  Widget _buildSeparator() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.w),
      child: Text(
        ':',
        style: TextStyle(
          color: Colors.white.withOpacity(0.3),
          fontSize: 18.sp,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
