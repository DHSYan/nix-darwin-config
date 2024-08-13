{ ... }: 
{
    system.defaults.NSGlobalDomain = {
        InitialKeyRepeat = 1;
        KeyRepeat = 5;
    };

    system.keyboard = {
        remapCapsLockToEscape = true;
    };
}

