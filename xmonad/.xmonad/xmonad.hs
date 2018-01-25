import XMonad
import XMonad.Config.Desktop

main = xmonad desktopConfig {
    terminal = "urxvt -e fish"
}
