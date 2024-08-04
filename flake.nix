{
	description = "Aurora's NixOS System";

	inputs = {
		nixpkgs.url = "nixpkgs/nixos-unstable";
		home-manager = {
			url = "github:nix-community/home-manager/master";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		nur.url = "github:nix-community/nur";
	};

	outputs = { self, nixpkgs, nur, home-manager,  ... } @ inputs: 
		let
			lib = nixpkgs.lib;
		in 
		{ 
			nixosConfigurations = {
				faernton = lib.nixosSystem {
					system = "x86_64-linux";
					modules = [
						./nixos/configuration.nix
					];
				};

				davenport = lib.nixosSystem {
					system = "aarch64-linux";
					modules = [
						./nixos/configuration.nix
						./nixos/davenport-configuration.nix
					];
				};
			};

			homeManagerConfigurations = {
				"aurora@faernton" = home-manager.lib.homeManagerConfiguration {
					pkgs = import nixpkgs {
						system = "x86_64-linux";
						overlays = [inputs.nur.overlay];
						config = { allowUnfree = true; };
					};
					configuration = ./home/faernton.nix;
					system = "x86_64-linux";
					username = "aurora";
					extraSpecialArgs = { inherit inputs; };
				};
				"aurora@davenport" = home-manager.lib.homeManagerConfiguration {
					pkgs = import nixpkgs {
						system = "aarch64-linux";
						overlays = [inputs.nur.overlay];
						config = { allowUnfree = true; };
					};
					configuration = ./home/davenport.nix;
					system = "aarch64-linux";
					username = "aurora";
					extraSpecialArgs = { inherit inputs; };
				};
			};
		};
}
