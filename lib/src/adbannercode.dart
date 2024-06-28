import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

//paste in AndroidManifest.xml
// <meta-data
// android:name="com.google.android.gms.ads.APPLICATION_ID"
// android:value="pub-3511968554265090" />

class Adbannercode extends StatelessWidget {
  const Adbannercode({super.key});
  static BannerAd createBannerAd() {
    BannerAd adBanner = BannerAd(
      size: AdSize.banner,
      adUnitId: 'ca-app-pub-3511968554265090~1694533384',
      listener: BannerAdListener(
          onAdLoaded: (ad) => print('Ad loaded'),
          onAdFailedToLoad: (ad, error) {
            ad.dispose();
            createBannerAd();
          }),
      request: const AdRequest(),
    );
    adBanner.load();
    return adBanner;
  }

  static BannerAd createFullBannerAd() {
    BannerAd adBanner = BannerAd(
      size: AdSize.fullBanner,
      adUnitId: 'ca-app-pub-3511968554265090~1694533384',
      listener: BannerAdListener(
        onAdLoaded: (ad) => print('Ad loaded'),
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          createFullBannerAd();
        },
      ),
      request: const AdRequest(),
    );
    adBanner.load();
    return adBanner;
  }

  static BannerAd createLargeBannerAd() {
    BannerAd adBanner = BannerAd(
      size: AdSize.largeBanner,
      adUnitId: 'ca-app-pub-3511968554265090~1694533384',
      listener: BannerAdListener(
          onAdLoaded: (ad) => print('Ad loaded'),
          onAdFailedToLoad: (ad, error) {
            ad.dispose();
            createLargeBannerAd();
          }),
      request: const AdRequest(),
    );
    adBanner.load();
    return adBanner;
  }

  static BannerAd createFluidBannerAd() {
    BannerAd adBanner = BannerAd(
      size: AdSize.fluid,
      adUnitId: 'ca-app-pub-3511968554265090~1694533384',
      listener: BannerAdListener(
          onAdLoaded: (ad) => print('Ad loaded'),
          onAdFailedToLoad: (ad, error) {
            ad.dispose();
            createFluidBannerAd();
          }),
      request: const AdRequest(),
    );
    adBanner.load();
    return adBanner;
  }

  @override
  Widget build(BuildContext context) {
    BannerAd bannerAd = createBannerAd();
    return AdWidget(ad: bannerAd);
  }
}
