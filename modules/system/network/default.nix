{ ... }:
{
  networking.hostName = "nixos";
  networking.networkmanager = {
    enable = true;
    dns = "systemd-resolved";

    ensureProfiles.profiles = {
      "Wired connection 1" = {
        connection = {
          id = "Wired connection 1";
          type = "ethernet";
        };

        ipv4 = {
          method = "auto";
          ignore-auto-dns = true;
        };

        ipv6 = {
          method = "auto";
          ignore-auto-dns = true;
        };
      };
    };
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

      DNSSEC = "false";
      DNSOverTLS = "opportunistic";
      FallbackDNS = [
        "1.1.1.1"
        "1.0.0.1"

        "2606:4700:4700::1111"
        "2606:4700:4700::1001"
      ];

      Domains = [ "~." ];
    };
  };
}
