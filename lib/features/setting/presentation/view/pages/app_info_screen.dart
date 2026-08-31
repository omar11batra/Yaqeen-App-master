import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/core/components/app_scaffold/app_scaffold_widget.dart';
import 'package:quran_app/core/extensions/theme_extensions.dart';

class AppInfoScreen extends StatelessWidget {
  const AppInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffoldWidget(
      title: 'معلومات التطبيق',
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // العنوان الرئيسي
            Center(
              child: Column(
                children: [
                  Text(
                    'تطبيق يقين – الموسوعة الدينية',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold,
                          color: context.primaryColor,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'دليلك الشامل للقرآن الكريم والعبادات اليومية',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 14.sp,
                          color: context.gray1,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.h),

            // الوصف
            Text(
              'تطبيق يقين – الموسوعة الدينية هو تطبيق إسلامي متكامل يهدف إلى مساعدة المسلمين على التقرب إلى الله، وتنظيم عباداتهم اليومية، والوصول إلى محتوى ديني موثوق بطريقة سهلة وعصرية. يجمع التطبيق بين القرآن الكريم، والعبادات، والمراجع الإسلامية، في تجربة استخدام مريحة تدعم العمل بدون إنترنت.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 14.sp,
                    height: 1.6,
                  ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 32.h),

            // المميزات الرئيسية
            Text(
              'المميزات الرئيسية للتطبيق',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: 16.h),

            _buildFeatureItem(
              context,
              icon: '📖',
              title: 'قراءة القرآن الكريم',
              description:
                  'يوفر التطبيق واجهة متكاملة لقراءة القرآن الكريم بالرسم العثماني، مع عناية خاصة بجودة الخط وسهولة التصفح.',
              features: [
                'عرض النص القرآني بخطوط عربية متعددة',
                'علامات الوقف وأحكام التجويد',
                'التحكم في حجم الخط',
                'وضع القراءة الليلي لراحة العين',
              ],
            ),
            SizedBox(height: 16.h),

            _buildFeatureItem(
              context,
              icon: '🎧',
              title: 'الاستماع إلى القرآن الكريم',
              description:
                  'يحتوي التطبيق على نظام متكامل للاستماع إلى القرآن الكريم بأصوات نخبة من القرّاء.',
              features: [
                'تشغيل وتحكم كامل بالصوت',
                'تحميل السور للاستماع بدون إنترنت',
                'تنوع القرّاء',
                'عرض الآيات أثناء الاستماع',
              ],
            ),
            SizedBox(height: 16.h),

            _buildFeatureItem(
              context,
              icon: '⏰',
              title: 'مواقيت الصلاة',
              description:
                  'يعرض التطبيق مواقيت الصلاة بدقة عالية اعتماداً على الموقع الجغرافي.',
              features: [
                'تحديد تلقائي لمواقيت الصلاة',
                'تنبيهات وإشعارات للأذان',
                'عرض الوقت المتبقي للصلاة القادمة',
                'دعم عدة طرق حساب فلكية',
              ],
            ),
            SizedBox(height: 16.h),

            _buildFeatureItem(
              context,
              icon: '🕋',
              title: 'اتجاه القبلة',
              description:
                  'يوفر التطبيق بوصلة دقيقة لتحديد اتجاه القبلة في أي مكان.',
              features: [
                'تحديد اتجاه القبلة بدقة',
                'خريطة تفاعلية',
                'عرض المسافة إلى الكعبة المشرفة',
              ],
            ),
            SizedBox(height: 16.h),

            _buildFeatureItem(
              context,
              icon: '📿',
              title: 'الأذكار والأدعية',
              description: 'موسوعة شاملة للأذكار والأدعية اليومية.',
              features: [
                'أذكار الصباح والمساء',
                'أذكار بعد الصلاة',
                'عدّاد للتسبيح',
                'إمكانية إضافة أدعية خاصة بالمستخدم',
              ],
            ),
            SizedBox(height: 16.h),

            _buildFeatureItem(
              context,
              icon: '🔍',
              title: 'البحث المتقدم',
              description: 'محرك بحث ذكي داخل القرآن الكريم.',
              features: [
                'البحث في نص الآيات',
                'البحث بالكلمات المفتاحية',
                'نتائج فورية',
                'دعم البحث بدون تشكيل',
              ],
            ),
            SizedBox(height: 16.h),

            _buildFeatureItem(
              context,
              icon: '🔖',
              title: 'العلامات المرجعية',
              description:
                  'يساعدك التطبيق على حفظ مواضع القراءة وتنظيمها.',
              features: [
                'حفظ أماكن التوقف في القراءة',
                'تصنيف العلامات',
                'إضافة ملاحظات',
                'مزامنة البيانات',
              ],
            ),
            SizedBox(height: 16.h),

            _buildFeatureItem(
              context,
              icon: '✨',
              title: 'أسماء الله الحسنى',
              description: 'عرض وشرح مفصل لأسماء الله الحسنى.',
              features: [
                'شرح معاني الأسماء',
                'تفسير مبسط',
                'صوتيات للنطق الصحيح',
              ],
            ),
            SizedBox(height: 16.h),

            _buildFeatureItem(
              context,
              icon: '📚',
              title: 'المكتبة الإسلامية',
              description: 'مكتبة رقمية متكاملة للكتب والمراجع الإسلامية.',
              features: [
                'تصفح وتحميل الكتب',
                'القراءة بدون إنترنت',
                'تنظيم حسب التصنيفات',
                'البحث داخل المحتوى',
              ],
            ),
            SizedBox(height: 16.h),

            _buildFeatureItem(
              context,
              icon: '📱',
              title: 'العمل بدون إنترنت',
              description: 'يدعم التطبيق الاستخدام الكامل دون اتصال بالإنترنت.',
              features: [
                'تخزين محلي ذكي',
                'مزامنة تلقائية عند توفر الإنترنت',
                'إدارة مساحة التخزين',
              ],
            ),
            SizedBox(height: 32.h),

            // البنية التقنية
            Text(
              'البنية التقنية للتطبيق',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: 16.h),
            Text(
              'التقنيات والمواصفات:',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(height: 12.h),
            _buildTechItem(context, 'مبني باستخدام Flutter SDK (الإصدار 3.3.3 فأعلى)'),
            _buildTechItem(context, 'إدارة الحالة باستخدام Flutter Bloc'),
            _buildTechItem(context, 'قاعدة بيانات SQLite للتخزين المحلي'),
            _buildTechItem(context, 'تصميم معماري Clean Architecture'),
            _buildTechItem(context, 'دعم كامل للغة العربية'),
            _buildTechItem(context, 'تصميم متجاوب مع جميع أحجام الشاشات'),
            _buildTechItem(context, 'دعم الوضع الليلي والنهاري'),
            _buildTechItem(context, 'دعم أندرويد و iOS'),
            _buildTechItem(context, 'نظام متقدم لمعالجة الأخطاء والتحديثات'),
            SizedBox(height: 32.h),

            // حقوق التصميم والتطوير
            Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: context.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(
                  color: context.primaryColor.withOpacity(0.3),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    '✍️ حقوق التصميم والتطوير',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    'تم تصميم وتطوير تطبيق يقين – الموسوعة الدينية بواسطة',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 14.sp,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'المهندس عمر عبدالعزيز البتراء',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: context.primaryColor,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureItem(
    BuildContext context, {
    required String icon,
    required String title,
    required String description,
    required List<String> features,
  }) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: context.surfaceColor,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: context.primaryColor.withOpacity(0.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                icon,
                style: TextStyle(fontSize: 24.sp),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Text(
            description,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 14.sp,
                  height: 1.5,
                ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 12.h),
          ...features.map((feature) => Padding(
                padding: EdgeInsets.only(bottom: 6.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 6.h, right: 8.w),
                      width: 6.w,
                      height: 6.h,
                      decoration: BoxDecoration(
                        color: context.primaryColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        feature,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontSize: 13.sp,
                              color: context.gray1,
                            ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildTechItem(BuildContext context, String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 6.h, right: 8.w),
            width: 6.w,
            height: 6.h,
            decoration: BoxDecoration(
              color: context.primaryColor,
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
