{ pkgs, ... }:

{
  # programs.mosh = {
  #   enable = true;
  #   programs.mosh.openFirewall = false;
  # };

  # services.openssh = {
  #   settings = {
  #     PasswordAuthentication = false;
  #     KbdInteractiveAuthentication = false;
  #     PermitRootLogin = "no";
  #     AllowUsers = [ "whit" ];
  #   };
  # };

  environment.systemPackages = with pkgs; [
    mosh
  ];
}
