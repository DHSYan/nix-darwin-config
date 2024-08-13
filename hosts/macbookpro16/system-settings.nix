{ ... }: 
{
    system.defaults.NSGlobalDomain = {
        InitialKeyRepeat = -1;
        KeyRepeat = 10;
    };

    system.keyboard = {
        enableKeyMapping = true;
        remapCapsLockToEscape = true;
    };
}

