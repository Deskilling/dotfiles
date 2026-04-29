{ pkgs, ... }:
{
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.initrd.kernelModules = [ "amdgpu" ];

  boot.kernelParams = [
    "nowatchdog"
    "nmi_watchdog=0"
    "tsc=nowatchdog"
    
    "amd_pstate=active"
  ];
}
