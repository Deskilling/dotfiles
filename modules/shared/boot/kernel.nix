{ pkgs, ... }:
{
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.initrd.kernelModules = [ "amdgpu" ];

  boot.kernelParams = [
    "nowatchdog"
    "nmi_watchdog=0"
  ];
}
