class Quien < Formula
  desc "A better WHOIS lookup tool with interactive TUI"
  homepage "https://github.com/retlehs/quien"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.6.0/quien_darwin_arm64.tar.gz"
      sha256 "da832b4820c00dc3e32da9734c986f2d49497533187c9192d7e55613a704f8c1"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.6.0/quien_darwin_amd64.tar.gz"
      sha256 "b95b76409d1c0194eefef46f7da7a76326b3751b3f38173ebafae4abc60e3b23"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.6.0/quien_linux_arm64.tar.gz"
      sha256 "3b7bcbe48e4afa1cc50f8527ea038eb3db8a2966b269809f0e634895b1390adb"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.6.0/quien_linux_amd64.tar.gz"
      sha256 "92c39956a6c9fb738d506784e80a7a4e77d415aafd5de41794b443bb839ebacd"
    end
  end

  def install
    bin.install "quien"
  end

  test do
    assert_match "quien", shell_output("#{bin}/quien help")
  end
end
