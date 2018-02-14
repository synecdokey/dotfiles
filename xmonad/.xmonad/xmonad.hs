import XMonad
import XMonad.Config.Desktop

main = xmonad desktopConfig {
    terminal = "urxvtc -e fish"
}
