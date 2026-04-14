import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';

class AboutLogoSection extends StatelessWidget {
  const AboutLogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      children: [
        Container(
          width: 96.w,
          height: 96.w,
          decoration: BoxDecoration(
            color: colorScheme.surface,
            shape: BoxShape.circle,
            border: Border.all(
              color: colorScheme.outlineVariant.withValues(alpha: 0.5),
              width: 1,
            ),
            boxShadow: AppDesignTokens.shadowSoft(context),
            image: const DecorationImage(
              image: NetworkImage('https://picsum.photos/seed/logo/200'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 16.h),
        Text(
          'Lunchbox Hub',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 48.w),
          child: Text(
            t.profile.appDescription,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.hintColor,
              height: 1.6,
            ),
          ),
        ),
      ],
    );
  }
}
