{ pkgs, ... }: {
  home.packages = with pkgs; [
    (discord.override {
      # withOpenASAR = true; # complementary
      withVencord = true;
    })
  ];

  home.file.".config/Vencord/settings/settings.json" = {
    source = ./config/settings.json;
  };
}

