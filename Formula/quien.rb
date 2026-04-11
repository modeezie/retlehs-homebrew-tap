class Quien < Formula
  desc "A better WHOIS lookup tool with interactive TUI"
  homepage "https://github.com/retlehs/quien"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.3.0/quien_darwin_arm64.tar.gz"
      sha256 "fe7e4a34c1c9d63c61fb31c2454505cd318d4d4e7c1cc0e928bf10bb95d4ef42"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.3.0/quien_darwin_amd64.tar.gz"
      sha256 "95c6f9b0576e1c0c185019221e88213c9144a9e4f50cf4bf2d38174cadc56ed3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.3.0/quien_linux_arm64.tar.gz"
      sha256 "48af3b9426857ef7a37d7b285fbb89bdf9697aacc9399fde9ab4813775272cbb"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.3.0/quien_linux_amd64.tar.gz"
      sha256 "12f2d486a57e689544f724317020acb3e3e9112dd2315ce1632188892a1ae820"
    end
  end

  def install
    bin.install "quien"
  end

  test do
    assert_match "quien", shell_output("#{bin}/quien help")
  end
end
