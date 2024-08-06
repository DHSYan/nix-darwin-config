{
    description = "Sean's Nix Darwin Setup";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
        nix-darwin.url = "github:LnL7/nix-darwin";
        nix-darwin.inputs.nixpkgs.follows = "nixpkgs";

        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };


        nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";

        # Optional: Declarative tap management
        homebrew-core = {
            url = "github:homebrew/homebrew-core";
            flake = false;
        };
        homebrew-cask = {
            url = "github:homebrew/homebrew-cask";
            flake = false;
        };

    };

    outputs = inputs@{ self, nix-darwin, nixpkgs, home-manager, nix-homebrew, homebrew-core, homebrew-cask, ... }: {
        # Build darwin flake using:
        # $ darwin-rebuild build --flake .#
        darwinConfigurations."Ding-Hans-MacBook-Pro" = nix-darwin.lib.darwinSystem {
            specialArgs =  { inherit inputs; };
            modules = [ 
                ./hosts/macbookpro16
                nix-homebrew.darwinModules.nix-homebrew {
                    nix-homebrew = {
                        # Install Homebrew under the default prefix
                        enable = true;

                        # Apple Silicon Only: Also install Homebrew under the 
                        # default Intel prefix for Rosetta 2
                        enableRosetta = true;

                        # User owning the Homebrew prefix
                        user = "dhsyan";

                        # Optional: Declarative tap management
                        taps = {
                            "homebrew/homebrew-core" = homebrew-core;
                            "homebrew/homebrew-cask" = homebrew-cask;
                        };

                        # Optional: Enable fully-declarative tap management
                        #
                        # With mutableTaps disabled, taps can no longer be 
                        # added imperatively with `brew tap`.
                        mutableTaps = false;
                    };
                }
            ];
        };

        # Expose the package set, including overlays, for convenience.
        darwinPackages = self.darwinConfigurations."Ding-Hans-MacBook-Pro".pkgs;

        homeConfigurations.dhsyan = home-manager.lib.homeManagerConfiguration {
            pkgs = self.darwinConfigurations."Ding-Hans-MacBook-Pro".pkgs;
            modules = [ ./home ];
        };
    };
}
