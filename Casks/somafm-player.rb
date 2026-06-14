cask "somafm-player" do
  version "1.0.1"
  sha256 "5c26b16484d540926ee6d67c8322d201263c62713b6827def63a844518bd25d9"

  url "https://github.com/retlehs/somafm-macos-player/releases/download/v1.0.1/SomaFM.Menu.Bar.Player.zip"
  name "SomaFM Menu Bar Player"
  desc "Native macOS status bar player for SomaFM radio"
  homepage "https://github.com/retlehs/somafm-macos-player"

  depends_on macos: :ventura

  app "SomaFM Menu Bar Player.app"

  zap trash: [
    "~/Library/Preferences/com.benword.somafm-menubar-player.plist"
  ]
end
