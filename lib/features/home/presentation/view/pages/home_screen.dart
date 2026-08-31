import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/core/components/base_header_widget.dart';
import 'package:quran_app/core/failure/request_state.dart';
import 'package:quran_app/core/widgets/app_scaffold/app_sliver_widget.dart';
import 'package:quran_app/features/another_screen/presentation/view/widgets/another_featuers.dart';
import 'package:quran_app/features/prayer_time/data/extension/extension.dart';
import 'package:quran_app/features/prayer_time/data/model/time_prayer_model.dart';
import 'package:quran_app/features/prayer_time/presentation/cubit/prayer_time_cubit.dart';
import 'package:quran_app/features/prayer_time/presentation/view/widgets/next_prayer_countdown_widget.dart';
import 'package:quran_app/core/components/quran_widgets/verse_of_day_widget.dart';
import 'package:intl/intl.dart' as intl;

class HomeScreenNew extends StatefulWidget {
  const HomeScreenNew({super.key});

  @override
  State<HomeScreenNew> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenNew> {
  @override
  Widget build(BuildContext context) {
    return AppSliverWidget(
      hasAppBar: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPremiumHeader(),
          
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                // Amazing Prayer Countdown Widget
                BlocBuilder<PrayerTimeCubit, PrayerTimeState>(
                  builder: (context, state) {
                    if (state.prayerState == RequestState.success &&
                        state.nextPrayer != null) {
                      final remainingTime =
                          state.nextPrayer!.time.difference(DateTime.now());
                      final safeRemainingTime =
                          remainingTime.isNegative ? Duration.zero : remainingTime;

                      final nextPrayerModel = TimePrayerModel(
                        id: 999,
                        title: state.nextPrayer!.name,
                        time: state.nextPrayer!.time12,
                        type: state.nextPrayer!.type,
                        image: state.nextPrayer!.type.imageAsset,
                        content: state.nextPrayer!.description,
                        color: Colors.blue,
                      );

                      return NextPrayerCountdownWidget(
                        nextPrayer: nextPrayerModel,
                        remainingTime: safeRemainingTime,
                      );
                    }
                    return const SizedBox();
                  },
                ),

                const VerseOfDayWidget(),

                SizedBox(height: 10.h),
                const BaseHederWidget(text: 'المميزات الرئيسية'),
                const AnotherFeatures(),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPremiumHeader() {
    final now = DateTime.now();
    final dayName = intl.DateFormat('EEEE', 'ar').format(now);
    final dateStr = intl.DateFormat('d MMMM yyyy', 'ar').format(now);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(24.w, 40.h, 24.w, 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'السلام عليكم',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).hintColor,
                      fontFamily: 'ios-1',
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'المستخدم العزيز',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w800,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                      fontFamily: 'ios-1',
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.notifications_none_rounded,
                  color: Theme.of(context).primaryColor,
                  size: 24.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).primaryColor.withOpacity(0.05),
                  Theme.of(context).primaryColor.withOpacity(0.01),
                ],
              ),
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(
                color: Theme.of(context).primaryColor.withOpacity(0.1),
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.calendar_today_rounded,
                  size: 16.sp,
                  color: Theme.of(context).primaryColor,
                ),
                SizedBox(width: 8.w),
                Text(
                  '$dayName، $dateStr',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor,
                    fontFamily: 'ios-1',
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
