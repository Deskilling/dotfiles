{
  hardware.amdgpu.opencl.enable = true;
  hardware.cpu.amd.updateMicrocode = true;

  boot.initrd.kernelModules = [ "amdgpu" ];

  boot.kernelParams = [
    "nowatchdog"
    "nmi_watchdog=0"
    "tsc=nowatchdog"
  ];
}