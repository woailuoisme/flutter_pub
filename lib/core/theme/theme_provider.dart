import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lunchbox_hub/core/services/storage_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  static const String _themeModeKey = 'theme_mode';
  static const String _schemeKey = 'theme_scheme';

  @override
  ThemeState build() {
    final prefs = ref.watch(sharedPreferencesProvider);
    final modeIndex = prefs.getInt(_themeModeKey) ?? ThemeMode.system.index;
    final schemeIndex = prefs.getInt(_schemeKey) ?? FlexScheme.shadGreen.index;

    return ThemeState(
      mode: ThemeMode.values[modeIndex],
      scheme: FlexScheme.values[schemeIndex],
    );
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    state = state.copyWith(mode: mode);
    await ref.read(sharedPreferencesProvider).setInt(_themeModeKey, mode.index);
  }

  Future<void> setScheme(FlexScheme scheme) async {
    state = state.copyWith(scheme: scheme);
    await ref.read(sharedPreferencesProvider).setInt(_schemeKey, scheme.index);
  }

  ThemeData get lightTheme {
    return FlexThemeData.light(
      scheme: state.scheme,
      surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
      blendLevel: 7,
      subThemesData: const FlexSubThemesData(
        interactionEffects: true,
        tintedDisabledControls: true,
        useM2StyleDividerInM3: false,
        inputDecoratorIsFilled: true,
        inputDecoratorBorderType: FlexInputBorderType.outline,
        alignedDropdown: true,
        navigationRailUseIndicator: true,
        adaptiveRemoveElevationTint: FlexAdaptive.all(),
        adaptiveElevationShadowsBack: FlexAdaptive.all(),
        adaptiveAppBarScrollUnderOff: FlexAdaptive.all(),
        buttonPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        cardRadius: 16,
      ),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      swapColors: true,
      cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
    );
  }

  ThemeData get darkTheme {
    return FlexThemeData.dark(
      scheme: state.scheme,
      surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
      blendLevel: 13,
      subThemesData: const FlexSubThemesData(
        interactionEffects: true,
        tintedDisabledControls: true,
        blendOnColors: true,
        useM2StyleDividerInM3: false,
        inputDecoratorIsFilled: true,
        inputDecoratorBorderType: FlexInputBorderType.outline,
        alignedDropdown: true,
        navigationRailUseIndicator: true,
        adaptiveRemoveElevationTint: FlexAdaptive.all(),
        adaptiveElevationShadowsBack: FlexAdaptive.all(),
        adaptiveAppBarScrollUnderOff: FlexAdaptive.all(),
        buttonPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        cardRadius: 16,
      ),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      swapColors: true,
      cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
    );
  }
}

class ThemeState {
  const ThemeState({required this.mode, required this.scheme});

  final ThemeMode mode;
  final FlexScheme scheme;

  ThemeState copyWith({ThemeMode? mode, FlexScheme? scheme}) {
    return ThemeState(mode: mode ?? this.mode, scheme: scheme ?? this.scheme);
  }
}
