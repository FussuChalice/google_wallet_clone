/// A class that defines constant keys for Hive storage related to personalization and usage across Google.
class HiveKeys {
  // Private constructor to prevent instantiation of this class.
  HiveKeys._();

  /// Key for storing personalization data within the wallet.
  static const String PERSONALIZATION_WITHIN_WALLET =
      "personalization_within_wallet";

  /// Key for indicating whether passes can be used across Google services.
  static const String USE_PASSES_ACROSS_GOOGLE = "use_passes_across_google";

  /// Key for storing personalization data across Google services.
  static const String PERSONALIZATION_ACROSS_GOOGLE =
      "personalization_across_google";

  /// Key for indicating whether the welcome page should be skipped.
  static const String SKIP_WELCOME_PAGE = "skip_welcome_page";
}
