class Quien < Formula
  desc "A better WHOIS lookup tool with interactive TUI"
  homepage "https://github.com/retlehs/quien"
  version "0.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.6.2/quien_darwin_arm64.tar.gz"
      sha256 "87233b467fbece99915d8dd2633f103d72d849d6137b1c27c615ae87fecaecc6"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.6.2/quien_darwin_amd64.tar.gz"
      sha256 "0c0ba47f68b5d325982d5bd65c9def1e1188149fa1c2b0f5fc31f33f8fc014ef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.6.2/quien_linux_arm64.tar.gz"
      sha256 "04a4d9bd2b96a6f629ab9b41942f0a3929663b2f861f18eaa3f801c36ac79633"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.6.2/quien_linux_amd64.tar.gz"
      sha256 "6f1f0e93b6c022a14a11de6dc12c4909c2b489366dc7e71408e9a4a83e3c9800"
    end
  end

  def install
    bin.install "quien"
  end

  test do
    assert_match "quien", shell_output("#{bin}/quien help")
  end
end
