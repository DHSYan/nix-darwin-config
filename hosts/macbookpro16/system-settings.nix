{ ... }: 
{
    system.defaults = {
        NSGlobalDomain = {
            # AppleKeyboardUIMode = 3;
            InitialKeyRepeat = 10;
            KeyRepeat = 2;
            ApplePressAndHoldEnabled = false;
        };
        dock.autohide = true;
        WindowManager.EnableStandardClickToShowDesktop = false;
    };




    system.keyboard = {
        enableKeyMapping = true;
        remapCapsLockToEscape = true;
    };
}

