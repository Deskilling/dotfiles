{ ... }:
{
  systemd.services.display-manager.restartIfChanged = false;

  services.displayManager.sddm = {
    enable = false;
    wayland.enable = true;
  };

  services.displayManager.ly = {
    enable = true;
  };
}
