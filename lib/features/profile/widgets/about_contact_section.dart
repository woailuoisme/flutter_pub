import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/features/profile/widgets/section_title.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:material_symbols_icons/symbols.dart';

import 'package:lunchbox_hub/core/widgets/card_widgets/premium_card.dart';

class AboutContactSection extends StatelessWidget {
  const AboutContactSection({
    super.key,
    required this.onTapPhone,
    required this.onTapAddress,
  });

  final VoidCallback onTapPhone;
  final VoidCallback onTapAddress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(title: t.about.contactTitle),
          SizedBox(height: 12.h),
          PremiumCard(
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                _AboutContactTile(
                  icon: Symbols.phone,
                  title: t.about.customerServiceHotline,
                  subtitle: t.about.customerServiceNumber,
                  onTap: onTapPhone,
                ),
                Divider(
                  height: 1,
                  indent: 56.w,
                  endIndent: 16.w,
                  color: Theme.of(context).dividerColor.withValues(alpha: 0.1),
                ),
                _AboutContactTile(
                  icon: Symbols.location_on,
                  title: t.about.companyAddress,
                  subtitle: t.about.addressDetails,
                  onTap: onTapAddress,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AboutContactTile extends StatelessWidget {
  const _AboutContactTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: colorScheme.primary.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Icon(icon, color: colorScheme.primary, size: 20.sp),
            ),
            SizedBox(width: 14.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: theme.hintColor,
                      fontSize: 11.sp,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    subtitle,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Symbols.chevron_right,
              size: 20.sp,
              color: colorScheme.onSurfaceVariant.withValues(alpha: 0.3),
            ),
          ],
        ),
      ),
    );
  }
}
