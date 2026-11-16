{
  imports = [ ./hardware-configuration.nix ];

  boot.kernelParams = [ "video=Virtual-1:2560x1440" ];

  services.openssh = {
    enable = true;
    settings.AllowUsers = [ "leif" ];
  };

  system.stateVersion = "26.05";
}
