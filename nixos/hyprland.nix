{ pkgs, ... }:

{
  # Enable Hyprland
  programs.hyprland = {
    enable = true;
    withUWSM = true;
  };
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";

  programs.hyprlock.enable = true;
  services.hypridle.enable = true;

  programs.fish.enable = true; #temp

  boot.loader.grub.enable = true; #temp
  boot.loader.grub.device = "/dev/sda"; #temp
  boot.loader.grub.useOSProber = true; #temp

  environment.systemPackages = with pkgs; [
    waybar #temp
    rofi-wayland #temp
    kitty #temp
    pyprland
    hyprpicker
    hyprcursor
    hyprlock
    hypridle
    hyprpaper
    hyprsunset
    hyprpolkitagent
  ];
}
