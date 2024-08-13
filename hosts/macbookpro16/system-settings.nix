{ ... }: 
{
    system.defaults.NSGlobalDomain = {
        AppleKeyboardUIMode = 3;
        InitialKeyRepeat = 1;
        KeyRepeat = 50;
    };

    system.keyboard = {
        enableKeyMapping = true;
        remapCapsLockToEscape = true;
    };
}

