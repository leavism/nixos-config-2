{ config, pkgs, lib, ... }:

{
  # Device-specific packages for Odin
  environment.systemPackages = with pkgs; [
    # Development tools specific to Odin
    go
  ];

  # Device-specific homebrew apps for Odin
  homebrew = {
    casks = lib.mkForce [  # Use mkForce to override the base casks
      # Base casks from common
      "1password"
      
      # Development Tools
      "visual-studio-code"
      
      # Communication
      "slack"
      "discord"
      
      # Browsers
      "firefox"
      
      # Utilities
      "raycast"
      "rectangle"
      
      # Media
      "spotify"
    ];
    
    brews = [
      # Development tools
      "gh"
    ];
  };

  # Odin-specific dock configuration
  local.dock.entries = [
    { path = "/Applications/Visual Studio Code.app/"; }
    { path = "/Applications/iTerm.app/"; }
    { path = "/Applications/Slack.app/"; }
    { path = "/Applications/Google Chrome.app/"; }
    { path = "/Applications/Spotify.app/"; }
    { path = "/System/Applications/System Settings.app/"; }
  ];
}