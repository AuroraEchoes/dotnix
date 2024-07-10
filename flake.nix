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

	outputs = { self, nixpkgs, nur, home-manager, ... } @ inputs: 
		let
			lib = nixpkgs.lib;
			system = "x86_64-linux";
			pkgs = import nixpkgs {
				inherit system;
				overlays = [inputs.nur.overlay];
				config = { allowUnfree = true; };
			};
		in { 
			nixosConfigurations.faernton = lib.nixosSystem {
				inherit system;
				modules = [ ./nixos/configuration.nix ];
			};
			homeConfigurations.aurora = home-manager.lib.homeManagerConfiguration {
				inherit pkgs;
				modules = [ ./home/home.nix ];
				extraSpecialArgs = { inherit inputs; };
			};
		};
}
