class Quien < Formula
  desc "A better WHOIS lookup tool with interactive TUI"
  homepage "https://github.com/retlehs/quien"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.5.0/quien_darwin_arm64.tar.gz"
      sha256 "f6963e699fa63b92e8b589b712c78b15881a412d7271f2aebf55eef35e317b14"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.5.0/quien_darwin_amd64.tar.gz"
      sha256 "853ae3ec3d1a6b07f5b123ed24847d3a7794ad1edcfdac6a61933707d34134b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.5.0/quien_linux_arm64.tar.gz"
      sha256 "626f3f57d032bd73f95a01f61b14a89af604cfd9ea0be1141e8ca09859316cd9"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.5.0/quien_linux_amd64.tar.gz"
      sha256 "44a6b795a636e517c34da3ff13b1dd569ed045450c60472181e25ba30daa9973"
    end
  end

  def install
    bin.install "quien"
  end

  test do
    assert_match "quien", shell_output("#{bin}/quien help")
  end
end
