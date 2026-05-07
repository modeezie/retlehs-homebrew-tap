class Quien < Formula
  desc "A better whois and domain intelligence toolkit"
  homepage "https://github.com/retlehs/quien"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.8.1/quien_darwin_arm64.tar.gz"
      sha256 "5a53a952806e64580ca9b4c1f19945c8fc310f24cb15560c1eb3382c67a15ade"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.8.1/quien_darwin_amd64.tar.gz"
      sha256 "5ae9934d5c1168ac5a6e24a67d1be6b192eb781ac813694ee48b06f44ad1f915"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.8.1/quien_linux_arm64.tar.gz"
      sha256 "ba254fd4d490a8e3e9fc815241bb7167d7c4d6530977a4d0921fc3a82137b503"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.8.1/quien_linux_amd64.tar.gz"
      sha256 "244f802972d0b565d7e0a433d6a12dcc907644128c471db68e3f4ce1cec73915"
    end
  end

  def install
    bin.install "quien"
  end

  test do
    assert_match "quien", shell_output("#{bin}/quien help")
  end
end
