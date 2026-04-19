{ pkgs, ... }:
{
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.initrd.kernelModules = [ "amdgpu" ];

  boot.kernelParams = [
    "nowatchdog"
    "nmi_watchdog=0"
    "tsc=nowatchdog"

    "amdgpu.ppfeaturemask=0xffffffff"
    "amdgpu.gpu_recovery=1"
    "amdgpu.lockup_timeout=1000"
  ];
}
