{ pkgs, lib, ... }:

{
	programs.alacritty = {
		enable = true;
		settings = {
			font = {
				normal = { family = "Iosevka Nerd Font"; };
				size = 14;
			};
			cursor = {
				style = "Beam";
				unfocused_hollow = false;
			};
			keyboard.bindings = [{
				key = "N";
				mods = "Control | Shift";
				action = "CreateNewWindow";
			}];
			window.padding = {
				x = 8;
				y = 8;
			};

			colors = {
				primary = {
					background = "#282828";
					foreground = "#EBDBB2";
				};
				normal = {
					black = "#282828";
					red = "#cc241d";
					green = "#98971a";
					yellow = "#d79921";
					blue = "#458588";
					magenta = "#b16286";
					cyan = "#689d6a";
					white = "#a89984";
				};
				bright = {
					black = "#928374";
					red = "#fb4934";
					green = "#b8bb26";
					yellow = "#fabd2f";
					blue = "#83a598";
					magenta = "#d3869b";
					cyan = "#8ec07c";
					white = "#ebdbb2";
				};
			};
		};
	};
}
