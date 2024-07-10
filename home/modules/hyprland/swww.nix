{ config, pkgs, ... }:

{
	home.packages = [
		pkgs.swww
	];

	home.file."./.config/swww/wallpaper" = {
		source = ./wallpaper;
		recursive = true;
	};
}
