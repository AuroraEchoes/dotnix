{ config, pkgs, ... }:

{
	programs.zsh = {
		enable = true;
		enableCompletion = true;
		autosuggestion.enable = true;
		syntaxHighlighting.enable = true;
		shellAliases = {
			"sync-home" = "home-manager switch --flake /home/\${USER}/.nix/";
			"sync-nix" = "sudo nixos-rebuild switch --flake /home/\${USER}/.nix/";
			"sync-all" = "sync-home; sync-nix";
		};
		plugins = [
			{
				name = "powerlevel10k";
				src = pkgs.zsh-powerlevel10k;
			}
		];
		initExtra = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme\n${(builtins.readFile ./p10k.zsh)}";
	};
}
