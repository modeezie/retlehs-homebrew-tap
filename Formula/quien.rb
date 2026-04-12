class Quien < Formula
  desc "A better WHOIS lookup tool with interactive TUI"
  homepage "https://github.com/retlehs/quien"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.4.1/quien_darwin_arm64.tar.gz"
      sha256 "f5869abb5ec2307afbf7637cdf4861d99fbefe49349bae121365a469cc522c5f"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.4.1/quien_darwin_amd64.tar.gz"
      sha256 "ccb451a66c90845c781d4ed43f3078d90a0fbf701fa870e9621604e80d0a1f9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.4.1/quien_linux_arm64.tar.gz"
      sha256 "e0579434c287366eeb48ca8c4e0b9f975fca166324b5ccd2d53189f8699fd532"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.4.1/quien_linux_amd64.tar.gz"
      sha256 "e82fa944a2540c25618d976d2a0f5336a851a832264d044f1af2afb5980387e7"
    end
  end

  def install
    bin.install "quien"
  end

  test do
    assert_match "quien", shell_output("#{bin}/quien help")
  end
end
