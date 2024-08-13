{ ... }: 
{
    system.defaults.NSGlobalDomain = {
        # AppleKeyboardUIMode = 3;
        InitialKeyRepeat = 5;
        KeyRepeat = 1;
        ApplePressAndHoldEnabled = false;
    };

    system.keyboard = {
        enableKeyMapping = true;
        remapCapsLockToEscape = true;
    };
}

