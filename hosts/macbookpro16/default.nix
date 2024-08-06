{ pkgs, inputs, ... }: 
{
    # List packages installed in system profile. To search by name, run:
    # $ nix-env -qaP | grep wget
    nixpkgs.config.allowUnfree = true;
    environment.systemPackages =
        with pkgs; [ 
            vim
            spotify
            neovim
            fzf
            wget
            git
            libfido2
        ];

    homebrew = {
        enable = true;
        brews = [

        ];
        casks = [
            "google-chrome"
            "raycast"
            "kitty"
            "obsidian"
        ];
    };

    # Auto upgrade nix package and the daemon service.
    services.nix-daemon.enable = true;

    nix.settings.experimental-features = "nix-command flakes";

    programs.zsh.enable = true;  # default shell on catalina

    # Set Git commit hash for darwin-version.
    system.configurationRevision = inputs.self.rev or inputs.self.dirtyRev or null;

    # Used for backwards compatibility, please read the changelog before changing.
    # $ darwin-rebuild changelog
    system.stateVersion = 4;

    # The platform the configuration will be used on.
    nixpkgs.hostPlatform = "aarch64-darwin";
}
