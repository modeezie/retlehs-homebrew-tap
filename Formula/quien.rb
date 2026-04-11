class Quien < Formula
  desc "A better WHOIS lookup tool with interactive TUI"
  homepage "https://github.com/retlehs/quien"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.3.1/quien_darwin_arm64.tar.gz"
      sha256 "433d3718acad39c408d7b643e4cce5a6b88b3ab64219a531f5b8efb18c842bdf"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.3.1/quien_darwin_amd64.tar.gz"
      sha256 "057280be34b2df21291f048c4cccf91fa6c9d27dbf6dd2a84a4de4c4c2c29f02"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.3.1/quien_linux_arm64.tar.gz"
      sha256 "36a1b5adaa37d8431bf651ab6bda5ef79b7683383cbadf33362597c4fd33de07"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.3.1/quien_linux_amd64.tar.gz"
      sha256 "a3fb15ea159121f31bbfc5f78f6ce73e23927ee2f816f4d426f9da75ec694f1c"
    end
  end

  def install
    bin.install "quien"
  end

  test do
    assert_match "quien", shell_output("#{bin}/quien help")
  end
end
