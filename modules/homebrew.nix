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
            "bitwarden-cli"
            "feh"
            "wallpaper"
            "ffmpeg"
        ];
        casks = [
            "google-chrome"
            "raycast"
            # "kitty"
            "obsidian"
            "aerospace"
            "bitwarden"
            "yubico-yubikey-manager"
            "zed"
            "font-hurmit-nerd-font"
            "font-iosevka-nerd-font"
            "font-zed-mono-nerd-font"
            "aldente"
            "rstudio"
            "R"
            "onedrive"
            "zoom"
            "tg-pro"
            "brave-browser"
        ];
    };
}
