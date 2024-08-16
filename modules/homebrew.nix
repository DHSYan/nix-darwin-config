{ ... }: 
{
    homebrew = {
        enable = true;
        brews = [
            "openssh"
            "libyubikey"
            "yubikey-agent"
            "libfido2"
            "cmake"
            "mandoc"
            "pkg-config"
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
