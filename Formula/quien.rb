class Quien < Formula
  desc "A better WHOIS lookup tool with interactive TUI"
  homepage "https://github.com/retlehs/quien"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.2.0/quien_darwin_arm64.tar.gz"
      sha256 "dc6bb3e8fb78c93da45b1fd38b9bc0e4cfe5f13dba8dcd8cbab168234f589f6f"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.2.0/quien_darwin_amd64.tar.gz"
      sha256 "cafa53022b28899560353b9255dc0e9a57c2bf4164ecbd33b9035f6238a906e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.2.0/quien_linux_arm64.tar.gz"
      sha256 "5f503024a21e3778b551d269a09ab52b4047863a3ff12a148e794f68da7ed27c"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.2.0/quien_linux_amd64.tar.gz"
      sha256 "3cdfc1749243fbd4dce47ebbedf095650861ab33ca49e4a921619a3dc796a087"
    end
  end

  def install
    bin.install "quien"
  end

  test do
    assert_match "quien", shell_output("#{bin}/quien help")
  end
end
