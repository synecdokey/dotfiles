import XMonad
import XMonad.Config.Desktop

main :: IO ()
main = xmonad desktopConfig {
    terminal = "urxvtc -e fish"
}
