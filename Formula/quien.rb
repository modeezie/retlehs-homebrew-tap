class Quien < Formula
  desc "A better whois and domain intelligence toolkit"
  homepage "https://github.com/retlehs/quien"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.7.1/quien_darwin_arm64.tar.gz"
      sha256 "f4372aa7f03af975dbebd8876b48877b5b601e5b975b3a5d1db5ac35af5690b0"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.7.1/quien_darwin_amd64.tar.gz"
      sha256 "14d6c892842746e713299dd8bbf8433f7ced23231eae98271af8707fa491c3b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.7.1/quien_linux_arm64.tar.gz"
      sha256 "840079b39857d475704dc2e21d78b37a3e5eaa4295b6c2523e81297c3ac1e91f"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.7.1/quien_linux_amd64.tar.gz"
      sha256 "b879ba635838344b6fe76e7739e61b8a5af3e3a8e377b9c1bcb2f40b256c5dca"
    end
  end

  def install
    bin.install "quien"
  end

  test do
    assert_match "quien", shell_output("#{bin}/quien help")
  end
end
