import 'package:vehicanich/screens/onboarding/onboarding_info.dart';
import 'package:vehicanich/utils/app_images.dart';

class OnboardingItems {
  List<OnboardingInfo> items = [
    OnboardingInfo(
      title: 'VEHICANICH',
      subtitle: 'We make your car\nsmarter',
      image: onboardingfirst,
    ),
    OnboardingInfo(
        title: 'VEHICANICH', subtitle: 'DES', image: onboardingsecond),
    OnboardingInfo(title: 'VEHICANICH', subtitle: 'JKD', image: onboardingthird)
  ];
}
