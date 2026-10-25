{
  boot.plymouth = {
    enable = true;
    theme = "fade-in";
  };

  boot.kernelParams = [
    "quiet"
    "splash"
  ];

  boot.consoleLogLevel = 0;
}
