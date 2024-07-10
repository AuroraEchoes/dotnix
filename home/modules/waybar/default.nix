{ config, pkgs, ... }:

{
	programs.waybar = {
		enable = true;
		style = (builtins.readFile ./style.css);
	};
	xdg.configFile."waybar/config".source = ./config.jsonc;
}
