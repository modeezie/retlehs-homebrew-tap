class Quien < Formula
  desc "A better WHOIS lookup tool with interactive TUI"
  homepage "https://github.com/retlehs/quien"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.6.1/quien_darwin_arm64.tar.gz"
      sha256 "8765a1c458c5a37dcd75169e15553327f5e19b734fd5c9d18409e8cf780221bb"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.6.1/quien_darwin_amd64.tar.gz"
      sha256 "1fcea5a275142d8528e04c4b56f43cc10f04453157373c22ec6a361d274c8c19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.6.1/quien_linux_arm64.tar.gz"
      sha256 "9fcd16141a300918ac3e2062e33e12ecf3bbf61fd9229d23e7368c0a881079e9"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.6.1/quien_linux_amd64.tar.gz"
      sha256 "be6d0f82f87a11682db283e31344941ae5b7760c7f4f2601b17f933f347b45c4"
    end
  end

  def install
    bin.install "quien"
  end

  test do
    assert_match "quien", shell_output("#{bin}/quien help")
  end
end
