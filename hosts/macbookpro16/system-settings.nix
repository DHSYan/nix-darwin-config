{ ... }: 
{
    system.defaults.NSGlobalDomain = {
        InitialKeyRepeat = 0;
        KeyRepeat = 50;
    };

    system.keyboard = {
        enableKeyMapping = true;
        remapCapsLockToEscape = true;
    };
}

