import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGilroyMedium =>
      theme.textTheme.bodyLarge!.gilroyMedium.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLargeGilroyMediumGray400 =>
      theme.textTheme.bodyLarge!.gilroyMedium.copyWith(
        color: appTheme.gray400,
        fontSize: 18.fSize,
      );
  static get bodyLargeGilroyMediumGray50 =>
      theme.textTheme.bodyLarge!.gilroyMedium.copyWith(
        color: appTheme.gray50.withOpacity(0.7),
      );
  static get bodyLargeGilroyMediumGray60001 =>
      theme.textTheme.bodyLarge!.gilroyMedium.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyLargeGilroyMediumOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.gilroyMedium.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.fSize,
      );
  static get bodyLargeGilroyMediumPrimary =>
      theme.textTheme.bodyLarge!.gilroyMedium.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get bodyLargeGilroyMediumPrimary_1 =>
      theme.textTheme.bodyLarge!.gilroyMedium.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeGilroyMedium_1 => theme.textTheme.bodyLarge!.gilroyMedium;
  static get bodyLargeGilroyRegularGray60001 =>
      theme.textTheme.bodyLarge!.gilroyRegular.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyLargeRoboto => theme.textTheme.bodyLarge!.roboto;
  static get bodyLargeRobotoOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumOnPrimaryContainer_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumWhiteA70001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  // Headline text style
  static get headlineMedium28 => theme.textTheme.headlineMedium!.copyWith(
        fontSize: 28.fSize,
      );
  static get headlineMediumOnPrimaryContainer =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get headlineSmallGilroyBold =>
      theme.textTheme.headlineSmall!.gilroyBold.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  // Label text style
  static get labelLargeGray50 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Title text style
  static get titleLargeAclonicaOnPrimaryContainer =>
      theme.textTheme.titleLarge!.aclonica.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleLargeGilroyGray800 =>
      theme.textTheme.titleLarge!.gilroy.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeGilroyPrimaryContainer =>
      theme.textTheme.titleLarge!.gilroy.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMedium16_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumGray50 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50,
      );
  static get titleMediumGray60001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray60001,
      );
  static get titleMediumGray6000116 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray60001,
        fontSize: 16.fSize,
      );
  static get titleMediumGray80001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray80001,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMedium_1 => theme.textTheme.titleMedium!;
  static get titleSmallAirbnbCerealAppPrimary =>
      theme.textTheme.titleSmall!.airbnbCerealApp.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray60002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray60002,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallOnPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleSmallOnSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
}

extension on TextStyle {
  TextStyle get aclonica {
    return copyWith(
      fontFamily: 'Aclonica',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get gilroyBold {
    return copyWith(
      fontFamily: 'Gilroy-Bold',
    );
  }

  TextStyle get airbnbCerealApp {
    return copyWith(
      fontFamily: 'Airbnb Cereal App',
    );
  }

  TextStyle get gilroyRegular {
    return copyWith(
      fontFamily: 'Gilroy-Regular',
    );
  }

  TextStyle get gilroyMedium {
    return copyWith(
      fontFamily: 'Gilroy-Medium',
    );
  }

  TextStyle get gilroy {
    return copyWith(
      fontFamily: 'Gilroy',
    );
  }
}
