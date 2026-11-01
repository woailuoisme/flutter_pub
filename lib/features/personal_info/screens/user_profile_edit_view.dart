import 'dart:io';
import 'dart:ui' as ui;
import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/features/personal_info/providers/personal_info_provider.dart';
import 'package:lunchbox_hub/features/profile/providers/profile_provider.dart';
import 'package:lunchbox_hub/features/personal_info/widgets/profile_avatar_edit.dart';
import 'package:lunchbox_hub/features/personal_info/widgets/profile_info_card.dart';
import 'package:lunchbox_hub/features/personal_info/widgets/profile_info_tile.dart';
import 'package:lunchbox_hub/features/personal_info/widgets/profile_edit_save_button.dart';
import 'package:lunchbox_hub/features/personal_info/widgets/profile_edit_dialog.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:toastification/toastification.dart';
import 'package:flutter_animate/flutter_animate.dart';

/// 个人信息编辑视图
class ProfileEditView extends ConsumerStatefulWidget {
  const ProfileEditView({super.key});

  @override
  ConsumerState<ProfileEditView> createState() => _ProfileEditViewState();
}

class _ProfileEditViewState extends ConsumerState<ProfileEditView> {
  final _nicknameController = TextEditingController();
  final _phoneController = TextEditingController();
  File? _selectedAvatarFile;
  bool _isInitialized = false;

  @override
  void dispose() {
    _nicknameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _initializeData() {
    if (_isInitialized) return;

    final state = ref.read(profileProvider);
    final user = state.value?.currentUser;

    if (user != null) {
      _nicknameController.text = user.name;
      _phoneController.text = user.mobile ?? '';

      _isInitialized = true;
    }
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final XFile? image = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
      maxWidth: 1000,
    );

    if (image != null) {
      setState(() {
        _selectedAvatarFile = File(image.path);
      });
    }
  }

  Future<void> _saveProfile() async {
    final nickname = _nicknameController.text.trim();
    final mobile = _phoneController.text.trim();

    if (nickname.isEmpty) {
      toastification.show(
        context: context,
        title: Text(t.auth.nickname + t.profile.info.notSet),
        type: ToastificationType.warning,
      );
      return;
    }

    final success = await ref
        .read(personalInfoProvider.notifier)
        .updateProfile(
          name: nickname,
          mobile: mobile,
          avatar: _selectedAvatarFile,
        );

    if (success && mounted) {
      toastification.show(
        context: context,
        title: Text(t.common.success),
        description: Text(t.profile.saveSuccess),
        type: ToastificationType.success,
        autoCloseDuration: const Duration(seconds: 2),
      );
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    _initializeData();

    final state = ref.watch(profileProvider);
    final updateState = ref.watch(personalInfoProvider);
    final user = state.value?.currentUser;
    final theme = Theme.of(context);
    final isUpdating = updateState is AsyncLoading;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          t.profile.personalInfo,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ).animate().fadeIn(duration: 400.ms).slideX(begin: -0.1),
        centerTitle: true,
        elevation: 0,
        backgroundColor: theme.colorScheme.surface.withValues(alpha: 0.7),
        flexibleSpace: ClipRect(
          child: BackdropFilter(
            filter: ui.ImageFilter.blur(sigmaX: 15, sigmaY: 15),
            child: Container(color: Colors.transparent),
          ),
        ),
        scrolledUnderElevation: 0,
      ),
      body: user == null
          ? const Center(child: CircularProgressIndicator())
          : Container(
              decoration: BoxDecoration(
                gradient: AppDesignTokens.surfaceGradient(context),
              ),
              child: Stack(
                children: [
                  // 顶部氛围装饰
                  Positioned(
                    top: -100.h,
                    right: -100.w,
                    child: Container(
                      width: 300.w,
                      height: 300.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(
                          colors: [
                            theme.colorScheme.primary.withValues(alpha: 0.1),
                            theme.colorScheme.primary.withValues(alpha: 0),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // 主滚动区域
                  Positioned.fill(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top + 56.h,
                        bottom: 120.h,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20.h),
                          ProfileAvatarEdit(
                                avatarUrl:
                                    user.avatar ??
                                    'https://picsum.photos/seed/user/200',
                                localImage: _selectedAvatarFile,
                                changeLabel: t.profile.avatar.clickToChange,
                                isLoading: isUpdating,
                                onTap: _pickImage,
                              )
                              .animate()
                              .fade(duration: 400.ms)
                              .scale(
                                begin: const Offset(0.9, 0.9),
                                curve: Curves.easeOutBack,
                              ),
                          SizedBox(height: 32.h),

                          // 基本信息
                          ProfileInfoCard(
                                title: t.profile.info.basic,
                                children: [
                                  ProfileInfoTile(
                                    icon: Symbols.person,
                                    label: t.auth.nickname,
                                    value: _nicknameController.text.isEmpty
                                        ? t.profile.info.notSet
                                        : _nicknameController.text,
                                    onTap: () =>
                                        _showEditNicknameDialog(context),
                                  ),
                                  _buildDivider(context),
                                  ProfileInfoTile(
                                    icon: Symbols.phone_android,
                                    label: t.profile.info.phone,
                                    value: _phoneController.text.isEmpty
                                        ? t.profile.info.notSet
                                        : _maskPhone(_phoneController.text),
                                    onTap: () => _showEditPhoneDialog(context),
                                  ),
                                ],
                              )
                              .animate()
                              .fadeIn(delay: 100.ms)
                              .slideY(begin: 0.1, curve: Curves.easeOut),

                          // 更多信息
                          ProfileInfoCard(
                                title: t.profile.info.other,
                                children: [
                                  ProfileInfoTile(
                                    icon: Symbols.mail,
                                    label: t.profile.info.email,
                                    value:
                                        (user.email == null ||
                                            user.email!.isEmpty)
                                        ? t.profile.info.notSet
                                        : user.email!,
                                    isEditable: false,
                                  ),
                                ],
                              )
                              .animate()
                              .fadeIn(delay: 200.ms)
                              .slideY(begin: 0.1, curve: Curves.easeOut),
                        ],
                      ),
                    ),
                  ),

                  // 底部固定保存按钮
                  Positioned(
                    left: 16.w,
                    right: 16.w,
                    bottom: 24.h + MediaQuery.of(context).padding.bottom,
                    child:
                        ProfileEditSaveButton(
                              onPressed: _saveProfile,
                              isLoading: isUpdating,
                            )
                            .animate()
                            .fadeIn(delay: 300.ms)
                            .slideY(begin: 0.5, curve: Curves.easeOutBack),
                  ),
                ],
              ),
            ),
    );
  }

  Widget _buildDivider(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 56.w, right: 16.w),
      child: Divider(
        height: 1.h,
        thickness: 0.5,
        color: Theme.of(context).dividerColor.withValues(alpha: 0.1),
      ),
    );
  }

  String _maskPhone(String phone) {
    if (phone.length < 7) return phone;
    return phone.replaceRange(3, 7, '****');
  }

  void _showEditNicknameDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) => ProfileEditDialog(
        title: t.common.edit + t.auth.nickname,
        initialValue: _nicknameController.text,
        hintText: t.auth.enterNickname,
        onConfirm: (value) => setState(() => _nicknameController.text = value),
      ),
    );
  }

  void _showEditPhoneDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) => ProfileEditDialog(
        title: t.common.edit + t.profile.info.phone,
        initialValue: _phoneController.text,
        hintText: t.auth.enterPhoneNumber,
        keyboardType: TextInputType.phone,
        onConfirm: (value) => setState(() => _phoneController.text = value),
      ),
    );
  }
}
