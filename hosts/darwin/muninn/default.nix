{ config, pkgs, lib, ... }:

{
  # Device-specific packages for Muninn
  environment.systemPackages = with pkgs; [
  ];

  # Device-specific homebrew apps for Muninn
  homebrew = {
    casks = lib.mkForce [  # Use mkForce to override the base casks
      # Base casks from common
      "bitwarden"
      
      # Creative Tools
      "figma"
      
      # Communication
      "notion"
      
      # Media
      "vlc"
      
      # Note-taking
      "obsidian"
    ];
    
    brews = [
      # Creative tools
      "gh"
    ];
  };

  # Muninn-specific dock configuration  
  local.dock.entries = [
    { path = "/Applications/Figma.app/"; }
    { path = "/Applications/Obsidian.app/"; }
    { path = "/Applications/Notion.app/"; }
    { path = "/System/Applications/Photos.app/"; }
    { path = "/System/Applications/Music.app/"; }
  ];
}