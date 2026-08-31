import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/core/components/quran_widgets/feature_card_icon_widget.dart';
import 'package:quran_app/core/components/quran_widgets/feature_card_text_widget.dart';
import 'package:quran_app/core/services/services_location.dart';
import 'package:quran_app/core/util/my_extensions.dart';
import 'package:quran_app/features/allh_name/presentation/view/pages/allh_name_screen.dart';
import 'package:quran_app/features/another_screen/presentation/view/pages/husin_almuslim_screen.dart';
import 'package:quran_app/features/another_screen/presentation/view/widgets/surah_and_detail_screen.dart';
import 'package:quran_app/features/hadith_40/presentation/view/pages/hadith_40_screen.dart';
import 'package:quran_app/features/my_adia/presentation/view/my_doa_provider.dart';
import 'package:quran_app/features/prayer_time/presentation/view/pages/prayer_time_screen.dart';
import 'package:quran_app/features/qiblah/qiblah_main_screen.dart';
import 'package:quran_app/features/quran_audio/presentation/view/pages/audio_quran_screen.dart';
import 'package:quran_app/features/quran_plan/presentation/view/pages/quran_plan_list_screen.dart';
import 'package:quran_app/features/read_quran/presentation/view/pages/read_quran_screen.dart';
import 'package:quran_app/features/ruqia_shareia/presentation/view/pages/ruqia_shareia_screen.dart';
import 'package:quran_app/features/sabih/presentation/view/tasbeeh_provider.dart';
import 'package:quran_app/features/thikr/presentation/view/pages/main_thikr_screen.dart';
import 'package:quran_app/features/wird/presentation/view/pages/wird_screen.dart';
import 'package:quran_app/features/zkar_after_pray/presentation/view/pages/zkar_after_pray_screen.dart';

class AnotherFeatures extends StatelessWidget {
  const AnotherFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.85,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 12.h,
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        _Item(
          onPressed: () => context.push(const ReadQuranScreen()),
          text: 'القرآن الكريم',
          icon: FlutterIslamicIcons.quran2,
        ),
        _Item(
          onPressed: () => context.push(const QuranPlanListScreen()),
          text: 'خطط الختم',
          icon: FlutterIslamicIcons.solidQuran2,
        ),
        _Item(
          onPressed: () => context.push(const WirdScreen(isMorning: true)),
          text: 'أذكار الصباح',
          icon: FlutterIslamicIcons.prayer,
        ),
        _Item(
          onPressed: () => context.push(const QiblahMainScreen()),
          text: 'القبلة',
          icon: FlutterIslamicIcons.qibla,
        ),
        _Item(
          onPressed: () => context.push(const WirdScreen(isMorning: false)),
          text: 'أذكار المساء',
          icon: FlutterIslamicIcons.prayer,
        ),
        if (serviceEnabled)
          _Item(
            onPressed: () => context.push(const PrayerTimeScreen()),
            text: 'أوقات الصلاة',
            icon: FlutterIslamicIcons.prayingPerson,
          ),
        _Item(
          onPressed: () => context.push(const TasbeehProvider()),
          text: 'التسبيح',
          icon: FlutterIslamicIcons.tasbih2,
        ),
        _Item(
          onPressed: () => context.push(const AllhNameScreen()),
          text: 'أسماء الله',
          icon: FlutterIslamicIcons.allah,
        ),
        _Item(
          onPressed: () => context.push(const MainThikrScreen()),
          text: 'الاذكار',
          icon: FlutterIslamicIcons.quran,
        ),
        _Item(
          onPressed: () => context.push(const AudioQuranScreen()),
          text: 'السماع',
          icon: FlutterIslamicIcons.quran,
        ),
        _Item(
          onPressed: () => context.push(const HisnMuslimScreen()),
          text: 'حصن المسلم',
          icon: FlutterIslamicIcons.quran,
        ),
        _Item(
          onPressed: () => context.push(const Hadith40Screen()),
          text: 'الأربعين النووية',
          icon: FlutterIslamicIcons.quran,
        ),
        _Item(
          onPressed: () => context.push(const ZkarAfterPrayScreen()),
          text: 'أذكار بعد الصلاة',
          icon: FlutterIslamicIcons.tasbihHand,
        ),
        _Item(
          onPressed: () => context.push(const RuqiaShareiaScreen()),
          text: 'الرقية الشرعية',
          icon: FlutterIslamicIcons.quran,
        ),
        _Item(
          onPressed: () => context.push(const SurahWithAllDetailScreen()),
          text: 'أسباب النزول',
          icon: FlutterIslamicIcons.quran,
        ),
        _Item(
          onPressed: () => context.push(const MuDoaProvider()),
          text: 'أدعيتي',
          icon: FlutterIslamicIcons.muslim2,
        ),
      ],
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.onPressed,
    required this.text,
    this.icon,
  });

  final String text;
  final IconData? icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: FeatureCardIconWidget(
            onTap: onPressed,
            icon: Icon(
              icon,
              size: 32.sp,
            ),
            shapeType: CardShapeType.hexagons, // Consistent elegant shape
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            fontFamily: 'ios-1',
          ),
        ),
      ],
    );
  }
}
