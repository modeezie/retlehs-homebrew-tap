class Quien < Formula
  desc "A better WHOIS lookup tool with interactive TUI"
  homepage "https://github.com/retlehs/quien"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.1.2/quien_darwin_arm64.tar.gz"
      sha256 "6c2c62fb62bf5aba6ee86c740e6f1c1ce91dfa566e190ac1602bb1a3dfb2f735"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.1.2/quien_darwin_amd64.tar.gz"
      sha256 "1d4375fa77ff1b96eb49b3c29b8a8bbe1fe262c6cde1b8bd3638aa347d0d09c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.1.2/quien_linux_arm64.tar.gz"
      sha256 "7cdd28395711b19d142b00e63ac68b22a502260ec58772c2db39f79c52ee7ec6"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.1.2/quien_linux_amd64.tar.gz"
      sha256 "65be843f84c9b330e38782e98282f70fb46c3a4ec61c5d09f08f0177a5478297"
    end
  end

  def install
    bin.install "quien"
  end

  test do
    assert_match "quien", shell_output("#{bin}/quien help")
  end
end
