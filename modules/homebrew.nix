{ ... }: 
{
    homebrew = {
        enable = true;
        brews = [
            "openssh"
            "libyubikey"
            "yubikey-agent"
        ];
        casks = [
            "google-chrome"
            "raycast"
            "kitty"
            "obsidian"
            "aerospace"
            "bitwarden"
            "yubico-yubikey-manager"
        ];
    };
}
