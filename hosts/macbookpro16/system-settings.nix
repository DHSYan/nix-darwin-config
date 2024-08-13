{ ... }: 
{
    system.defaults.NSGlobalDomain = {
        AppleKeyboardUIMode = 3;
        InitialKeyRepeat = 0.001;
        KeyRepeat = 500000;
    };

    system.keyboard = {
        enableKeyMapping = true;
        remapCapsLockToEscape = true;
    };
}

