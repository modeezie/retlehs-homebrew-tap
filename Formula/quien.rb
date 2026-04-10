class Quien < Formula
  desc "A better WHOIS lookup tool with interactive TUI"
  homepage "https://github.com/retlehs/quien"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.1.0/quien_darwin_arm64.tar.gz"
      sha256 "165ba2290605bd2d55afbaf18e48541665e8b18acdf1a96c92e40f3b898c8119"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.1.0/quien_darwin_amd64.tar.gz"
      sha256 "3689f37354ab5f596fbe32f4dfd453cb20f9359eafee58b3398906db50182a94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.1.0/quien_linux_arm64.tar.gz"
      sha256 "4c059bdaa5fc95d44c89aedb732bf269e668fcaaa2a30bcf43abcdcf832f61bc"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.1.0/quien_linux_amd64.tar.gz"
      sha256 "1b1eb56335d33b2a5926b1bd1adfcfcce04ec8ea65c9d19fc036bb546f64cfad"
    end
  end

  def install
    bin.install "quien"
  end

  test do
    assert_match "quien", shell_output("#{bin}/quien help")
  end
end
