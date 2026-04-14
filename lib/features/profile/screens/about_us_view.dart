import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:lunchbox_hub/core/widgets/html_web_view.dart';
import 'package:lunchbox_hub/features/profile/widgets/about_contact_section.dart';
import 'package:lunchbox_hub/features/profile/widgets/about_features_section.dart';
import 'package:lunchbox_hub/features/profile/widgets/about_logo_section.dart';
import 'package:lunchbox_hub/features/profile/widgets/about_policy_section.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:lunchbox_hub/core/widgets/button_widgets/premium_button.dart';

class AboutUsView extends ConsumerStatefulWidget {
  const AboutUsView({super.key});

  @override
  ConsumerState<AboutUsView> createState() => _AboutUsViewState();
}

class _AboutUsViewState extends ConsumerState<AboutUsView> {
  void _showPolicyDialog() {
    showDialog<void>(
      context: context,
      builder: (context) {
        final theme = Theme.of(context);
        return Dialog(
          insetPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 60.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Text(
                  t.about.userAgreementAndPrivacy,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: FutureBuilder<String>(
                  future: rootBundle.loadString('assets/html/xieyi.html'),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    return HtmlWebView(
                      htmlContent: snapshot.data ?? '',
                      backgroundColor: theme.colorScheme.surface,
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.w),
                child: PremiumButton(
                  width: double.infinity,
                  onPressed: () => Navigator.of(context).pop(),
                  text: t.common.confirm,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(t.about.title),
        centerTitle: true,
        elevation: 0,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 24.h)),
          const SliverToBoxAdapter(child: AboutLogoSection()),
          SliverToBoxAdapter(child: SizedBox(height: 32.h)),
          const SliverToBoxAdapter(child: AboutFeaturesSection()),
          SliverToBoxAdapter(child: SizedBox(height: 24.h)),
          SliverToBoxAdapter(
            child: AboutPolicySection(onTapPolicy: _showPolicyDialog),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 24.h)),
          SliverToBoxAdapter(
            child: AboutContactSection(
              onTapPhone: _launchPhone,
              onTapAddress: _launchMap,
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 32.h),
            sliver: SliverToBoxAdapter(
              child: PremiumButton(
                onPressed: _shareApp,
                icon: Symbols.share,
                text: t.about.shareWithFriends,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchPhone() async {
    final Uri launchUri = Uri(scheme: 'tel', path: '4001148818');
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    }
  }

  Future<void> _launchMap() async {
    const address = '广东省东莞市松山湖园区科汇路1号1栋1510室';
    final query = Uri.encodeComponent(address);
    Uri uri;

    if (Platform.isIOS || Platform.isMacOS) {
      uri = Uri.parse('https://maps.apple.com/?q=$query');
    } else {
      uri = Uri.parse('geo:0,0?q=$query');
    }

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      // Fallback to web map
      final webUri = Uri.parse(
        'https://www.google.com/maps/search/?api=1&query=$query',
      );
      if (await canLaunchUrl(webUri)) {
        await launchUrl(webUri, mode: LaunchMode.externalApplication);
      }
    }
  }

  Future<void> _shareApp() async {
    await SharePlus.instance.share(ShareParams(text: 'Lunchbox - 您的专属午餐管家'));
  }
}
