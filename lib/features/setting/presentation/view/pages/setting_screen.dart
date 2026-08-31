import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_app/core/components/button_progress_state.dart';
import 'package:quran_app/core/components/card_widget.dart';
import 'package:quran_app/core/extensions/theme_extensions.dart';
import 'package:quran_app/core/shared/resources/assets_manager.dart';
import 'package:quran_app/core/theme/theme_data.dart';
import 'package:quran_app/core/util/my_extensions.dart';
import 'package:quran_app/core/util/url_launcher_utils.dart';
import 'package:quran_app/core/widgets/app_scaffold/app_sliver_widget.dart';
import 'package:quran_app/core/widgets/theme_mode_widget.dart';
import 'package:quran_app/features/download/presentation/view/pages/download_screen.dart';
import 'package:quran_app/features/setting/presentation/view/pages/app_info_screen.dart';
import 'package:quran_app/features/setting_notification/presentation/view/pages/setting_notification_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return AppSliverWidget(
      hasAppBar: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StyleButtonWrap(
            onTap: () {
              context.push(const SettingNotificationScreen());
            },
            child: CardWidget(
              padding: EdgeInsets.all(16.w),
              margin: EdgeInsets.symmetric(
                horizontal: 10.sp,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('اعدادات الاشعارات', style: titleMedium(context)),
                      SizedBox(height: 5.h),
                      Text(
                        'قم بتعديل اعدادات الاشعارات',
                        style: titleMedium(context).copyWith(
                          fontSize: 12.sp,
                          color: context.gray1,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      color: context.primaryColor,
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: context.primaryColor),
                    ),
                    child: Icon(
                      CupertinoIcons.bell,
                      // color: context.primaryColor,
                      size: 24.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 12.h),
          StyleButtonWrap(
            onTap: () {
              context.push(const DownloadScreen());
            },
            child: CardWidget(
              margin: EdgeInsets.symmetric(
                horizontal: 10.sp,
              ),
              padding: EdgeInsets.all(16.w),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('اعدادات التنزيل', style: titleMedium(context)),
                      SizedBox(height: 5.h),
                      Text(
                        'قم بتعديل اعدادات التنزيل',
                        style: titleMedium(context).copyWith(
                          fontSize: 12.sp,
                          color: context.gray1,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      color: context.primaryColor,
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: context.primaryColor),
                    ),
                    child: Icon(
                      CupertinoIcons.arrow_down_to_line,
                      // color: context.white,
                      size: 24.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 12.h),
          StyleButtonWrap(
            onTap: () {
              context.push(const AppInfoScreen());
            },
            child: CardWidget(
              margin: EdgeInsets.symmetric(
                horizontal: 10.sp,
              ),
              padding: EdgeInsets.all(16.w),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('معلومات التطبيق', style: titleMedium(context)),
                      SizedBox(height: 5.h),
                      Text(
                        'تعرف على مميزات التطبيق والمعلومات التقنية',
                        style: titleMedium(context).copyWith(
                          fontSize: 12.sp,
                          color: context.gray1,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      color: context.primaryColor,
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: context.primaryColor),
                    ),
                    child: Icon(
                      CupertinoIcons.info_circle,
                      // color: context.primaryColor,
                      size: 24.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 16.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'اعدادات الثيم',
              style: context.titleMedium?.copyWith(
                fontSize: 16.sp,
              ),
            ),
          ),
          // const ThemeColorsWidget(),
          SizedBox(height: 8.h),
          const ThemeModeWidget(),

          SizedBox(height: 24.h),

          Center(
            child: Column(
              children: [
                /// اسم المطور
                Text(
                  'م. عمر عبدالعزيز البتراء',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                ),

                SizedBox(height: 16.h),

                /// زر الفيسبوك
                InkWell(
                  onTap: () async {
                    await UrlLauncherUtils.launchWebUrl(
                      'https://facebook.com/omar11batra',
                    );
                  },
                  borderRadius: BorderRadius.circular(8.r),
                  child: Container(
                    padding: EdgeInsets.all(12.w),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1877F2), // لون الفيسبوك
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: SvgPicture.asset(
                      AssetsManager.facebook,
                      width: 24.sp,
                      height: 24.sp,
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
