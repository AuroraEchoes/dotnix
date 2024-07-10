{ config, pkgs, ... }:

{
	programs.rofi = {
		enable = true;
		package = pkgs.rofi-wayland;
		extraConfig = {
			terminal = "alacritty";
			show-icons = false;
			kb-row-up = "Control+p,Up";
			kb-row-down = "Control+n,Down";
		};
		theme = 
			let
			inherit (config.lib.formats.rasi) mkLiteral; 
		in {
			"*" =  {
				font = "Iosevka Nerd Font Medium 14";

				bg0 = mkLiteral "#282828";
				bg1 = mkLiteral "#3C3836";
				bg2 = mkLiteral "#504945";
				bg3 = mkLiteral "#665C54";
				fg0 = mkLiteral "#FBF1C7";
				fg1 = mkLiteral "#EBDBB2";
				fg2 = mkLiteral "#D5C4A1";
				red = mkLiteral "#cc241d";
				green = mkLiteral "#98971a";
				yellow = mkLiteral "#D79921";
				blue = mkLiteral "#458588";
				magenta = mkLiteral "#B16286";
				cyan = mkLiteral "#689D6A";

				accent = mkLiteral "@green";
				urgent = mkLiteral "@red";

				background-color = mkLiteral "transparent";
				text-color = mkLiteral "@fg0";

				margin = mkLiteral "0";
				padding = mkLiteral "0";
				spacing = mkLiteral "0";
			};


			"window" = {
				location = mkLiteral "center";
				width = mkLiteral "280px";
				x-offset = mkLiteral "4px";
				y-offset = mkLiteral "26px";
				background-color = mkLiteral "@bg1";
				border = mkLiteral "1px";
				border-color = mkLiteral "@bg3";
				border-radius = mkLiteral "6px";
			};

			"inputbar" = {
				spacing = mkLiteral "8px";
				padding = mkLiteral "4px 8px";
				children = mkLiteral "[icon-search, entry]";
				background-color = mkLiteral "@bg0";
			};

			"entry" = {
				vertical-align = mkLiteral "0.5";
			};

			"element-icon" = {
				cursor = "pointer";
				vertical-align = mkLiteral "0.5";
			};

			"element-text" = {
				cursor = "pointer";
				vertical-align = mkLiteral "0.5";
			};

			"icon-search" = {
				vertical-align = mkLiteral "0.5";
				expand = mkLiteral "false";
				filename = "search-symbolic";
				size = mkLiteral "14px";
			};

			"textbox" = {
				padding = mkLiteral "4px 8px";
				background-color = mkLiteral "@bg2";
			};

			"listview" = {
				padding = mkLiteral "4px 0px";
				lines = mkLiteral "12";
				columns = mkLiteral "1";
				scrollbar = mkLiteral "true";
				fixed-height = false;
				dynamic = mkLiteral "true";
			};

			"element" = {
				padding = mkLiteral "4px 8px";
				spacing = mkLiteral "8px";
			};

			"element normal urgent" = {
				text-color = mkLiteral "@urgent";
			};

			"element normal active" = {
				text-color = mkLiteral "@accent";
			};

			"element alternate active" = {
				text-color = mkLiteral "@accent";
			};

			"element selected" = {
				text-color = mkLiteral "@bg1";
				background-color = mkLiteral "@accent";
			};

			"element selected urgent" = {
				background-color = mkLiteral "@urgent";
			};

			"element-icon" = {
				size = mkLiteral "0.8em";
			};

			"element-text" = {
				text-color = mkLiteral "inherit";
			};

			"scrollbar" = {
				cursor = "pointer";
				handle-width = mkLiteral "4px";
				handle-color = mkLiteral "@fg2";
				padding = mkLiteral "0 4px";
			};
		};
	};
}
