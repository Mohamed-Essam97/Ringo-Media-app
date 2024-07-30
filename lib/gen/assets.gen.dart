/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Urbanist-Bold.ttf
  String get urbanistBold => 'assets/fonts/Urbanist-Bold.ttf';

  /// File path: assets/fonts/Urbanist-Medium.ttf
  String get urbanistMedium => 'assets/fonts/Urbanist-Medium.ttf';

  /// File path: assets/fonts/Urbanist-Regular.ttf
  String get urbanistRegular => 'assets/fonts/Urbanist-Regular.ttf';

  /// File path: assets/fonts/Urbanist-SemiBold.ttf
  String get urbanistSemiBold => 'assets/fonts/Urbanist-SemiBold.ttf';

  /// List of all assets
  List<String> get values =>
      [urbanistBold, urbanistMedium, urbanistRegular, urbanistSemiBold];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Apple.svg
  SvgGenImage get apple => const SvgGenImage('assets/icons/Apple.svg');

  /// File path: assets/icons/Calendar_active.svg
  SvgGenImage get calendarActive =>
      const SvgGenImage('assets/icons/Calendar_active.svg');

  /// File path: assets/icons/Facebook.svg
  SvgGenImage get facebook => const SvgGenImage('assets/icons/Facebook.svg');

  /// File path: assets/icons/Folder.svg
  SvgGenImage get folder => const SvgGenImage('assets/icons/Folder.svg');

  /// File path: assets/icons/Folder_active.svg
  SvgGenImage get folderActive =>
      const SvgGenImage('assets/icons/Folder_active.svg');

  /// File path: assets/icons/Google.svg
  SvgGenImage get google => const SvgGenImage('assets/icons/Google.svg');

  /// File path: assets/icons/Memoji 2.png
  AssetGenImage get memoji2Png =>
      const AssetGenImage('assets/icons/Memoji 2.png');

  /// File path: assets/icons/Memoji 2.svg
  SvgGenImage get memoji2Svg => const SvgGenImage('assets/icons/Memoji 2.svg');

  /// File path: assets/icons/Vector.svg
  SvgGenImage get vector => const SvgGenImage('assets/icons/Vector.svg');

  /// File path: assets/icons/calendar.svg
  SvgGenImage get calendar => const SvgGenImage('assets/icons/calendar.svg');

  /// File path: assets/icons/category.svg
  SvgGenImage get category => const SvgGenImage('assets/icons/category.svg');

  /// File path: assets/icons/close-circle.svg
  SvgGenImage get closeCircle =>
      const SvgGenImage('assets/icons/close-circle.svg');

  /// File path: assets/icons/eye-slash.svg
  SvgGenImage get eyeSlash => const SvgGenImage('assets/icons/eye-slash.svg');

  /// File path: assets/icons/eye.svg
  SvgGenImage get eye => const SvgGenImage('assets/icons/eye.svg');

  /// File path: assets/icons/fi_plus.svg
  SvgGenImage get fiPlus => const SvgGenImage('assets/icons/fi_plus.svg');

  /// File path: assets/icons/menu.svg
  SvgGenImage get menu => const SvgGenImage('assets/icons/menu.svg');

  /// File path: assets/icons/notification.svg
  SvgGenImage get notification =>
      const SvgGenImage('assets/icons/notification.svg');

  /// File path: assets/icons/search-normal.svg
  SvgGenImage get searchNormal =>
      const SvgGenImage('assets/icons/search-normal.svg');

  /// File path: assets/icons/verify.svg
  SvgGenImage get verify => const SvgGenImage('assets/icons/verify.svg');

  /// List of all assets
  List<dynamic> get values => [
        apple,
        calendarActive,
        facebook,
        folder,
        folderActive,
        google,
        memoji2Png,
        memoji2Svg,
        vector,
        calendar,
        category,
        closeCircle,
        eyeSlash,
        eye,
        fiPlus,
        menu,
        notification,
        searchNormal,
        verify
      ];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
