{
  description = "Olivers VM Flake";
  inputs = {
	nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";

	home-manager = {
		url = "github:nix-community/home-manager/release-23.05";
		inputs.nixpkgs.follows = "nixpkgs";
	};
  };
  outputs = { self, nixpkgs, ...}@inputs: {
	nixosConfigurations = {
		"nixos-i3" = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			modules = [
				./configuration.nix
			];
		};
	};
  };
}
