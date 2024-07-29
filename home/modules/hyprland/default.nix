{ config, pkgs, ... }:

{
	imports = [ ./dunst.nix ./rofi.nix ./swww.nix ];
	home.packages = [
		pkgs.xdg-desktop-portal-hyprland
		pkgs.polkit
		pkgs.hyprshot
	];

	home.sessionVariables = {
		HYPRSHOT_DIR = "/home/aurora/Pictures";
	};

	wayland.windowManager.hyprland = {
		enable = true;
	};

	home.file."./.config/hypr/hyprland.conf".source = ./hyprland.conf;
	home.file."./.config/hypr/start-hypr.sh".source = ./start-hypr.sh;
}
