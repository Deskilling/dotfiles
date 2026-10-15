{
  networking.networkmanager = {
    enable = true;
    dns = "systemd-resolved";
  };

  services.resolved = {
    enable = true;
    settings.Resolve = {
      DNS = [
        "9.9.9.9"
        "149.112.112.112"
        "2620:fe::fe"
        "2620:fe::9"
      ];
      Domains = [ "~." ];
      DNSOverTLS = "opportunistic";
      DNSSEC = "allow-downgrade";
    };
  };
}