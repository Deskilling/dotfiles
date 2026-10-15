{
  pkgs,
  ...
}:
{
  Bookmarks = [
    # NixOS
    {
      Title = "Nixpkgs";
      URL = "https://search.nixos.org/packages?channel=unstable";
      Folder = "NixOS";
      Placement = "toolbar";
    }
    {
      Title = "MyNixOS";
      URL = "https://mynixos.com";
      Folder = "NixOS";
      Placement = "toolbar";
    }

    # Media
    {
      Title = "YouTube";
      URL = "https://www.youtube.com";
      Folder = "Media";
      Placement = "toolbar";
    }
  ];

  NewTabPage = false;

  AppAutoUpdate = false;
  BackgroundAppUpdate = false;

  BlockAboutAddons = false;
  BlockAboutConfig = false;
  BlockAboutProfiles = false;
  BlockAboutSupport = true;

  CaptivePortal = false;

  Cookies = {
    Locked = true;
    Behavior = "reject-foreign";
    BehaviorPrivateBrowsing = "reject";
  };

  DefaultDownloadDirectory = "\${home}/Downloads";
  DownloadDirectory = "\${home}/Downloads";

  DisableAppUpdate = true;
  DisableFeedbackCommands = true;
  DisableFirefoxStudies = true;
  DisableFirefoxAccounts = true;
  DisableFirefoxScreenshots = true;
  DisableForgetButton = true;
  DisableMasterPasswordCreation = true;
  DisableProfileImport = true;
  DisableProfileRefresh = true;
  DisableSetDesktopBackground = true;
  DisablePocket = true;
  DisableFormHistory = true;
  DisablePasswordReveal = true;

  DisableTelemetry = true;

  DisplayBookmarksToolbar = "always";
  DisplayMenuBar = "never";

  EnableTrackingProtection = {
    Value = true;
    Locked = true;
    Cryptomining = true;
    Fingerprinting = true;
    EmailTracking = true;
  };

  EncryptedMediaExtensions = {
    Enabled = true;
    Locked = true;
  };

  ExtensionUpdate = true;

  FirefoxSuggest = {
    WebSuggestions = true;
    SponsoredSuggestions = false;
    ImproveSuggest = false;
    Locked = true;
  };

  HardwareAcceleration = true;

  ManualAppUpdateOnly = true;
  NoDefaultBookmarks = true;

  PasswordManagerEnabled = false;

  AutofillAddressEnabled = false;
  AutofillCreditCardEnabled = false;

  PDFjs = {
    Enabled = true;
    EnablePermissions = false;
  };

  Permissions = {
    Camera = {
      BlockNewRequests = true;
      Locked = true;
    };

    Microphone = {
      Allow = [ ];
      Block = [ ];
      BlockNewRequests = true;
      Locked = true;
    };

    Location = {
      BlockNewRequests = true;
      Locked = true;
    };

    Notifications = {
      Allow = [ "http://localhost:8096/*" ];
      Block = [ "https://google.com/*" ];
      BlockNewRequests = true;
      Locked = true;
    };

    Autoplay = {
      Default = "block-audio";
      Locked = true;
    };
  };

  PictureInPicture = {
    Enabled = true;
    Locked = true;
  };

  PopupBlocking = {
    Default = true;
    Locked = true;
  };

  PromptForDownloadLocation = false;

  RequestedLocales = [ "en-US" ];

  SanitizeOnShutdown = {
    Cache = true;
    Cookies = false;
    Downloads = true;
    FormData = false;
    History = false;
    Sessions = false;
    SiteSettings = false;
    OfflineApps = true;
    Locked = true;
  };

  SearchBar = "unified";

  SearchEngines = {
    PreventInstalls = true;
    Default = "DuckDuckGo";
    Remove = [ "Google" ];
  };

  SearchSuggestEnabled = true;

  ShowHomeButton = true;
  StartDownloadsInTempDirectory = true;
  TranslateEnabled = true;

  UserMessaging = {
    ExtensionRecommendations = false;
    FeatureRecommendations = false;
    UrlbarInterventions = false;
    SkipOnboarding = true;
    MoreFromMozilla = false;
    FirefoxLabs = true;
    WhatsNew = false;
    Locked = true;
  };

  UseSystemPrintDialog = true;

  WebsiteFilter = {
    Block = [ "http://example.org/*" ];
    Exceptions = [ "http://example.org/articles/*" ];
  };
}
