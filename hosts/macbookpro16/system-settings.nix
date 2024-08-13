{ ... }: 
{
    system.defaults.NSGlobalDomain = {
        AppleKeyboardUIMode = 3;
        InitialKeyRepeat = -500000;
        KeyRepeat = 500000;
    };

    system.keyboard = {
        enableKeyMapping = true;
        remapCapsLockToEscape = true;
    };
}

