cask "somafm-player" do
  version "1.0.0"
  sha256 "76d6be15fb529ac8bd24c2bc17e5f8de101ab6d187ea9f3f7a93cce22f55fc73"

  url "https://github.com/retlehs/somafm-macos-player/releases/download/v1.0.0/SomaFM.Menu.Bar.Player.zip"
  name "SomaFM Menu Bar Player"
  desc "Native macOS status bar player for SomaFM radio"
  homepage "https://github.com/retlehs/somafm-macos-player"

  depends_on macos: ">= :ventura"

  app "SomaFM Menu Bar Player.app"

  zap trash: [
    "~/Library/Preferences/com.benword.somafm-menubar-player.plist"
  ]
end
