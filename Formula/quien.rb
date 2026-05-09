class Quien < Formula
  desc "A better whois and domain intelligence toolkit"
  homepage "https://github.com/retlehs/quien"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.9.0/quien_darwin_arm64.tar.gz"
      sha256 "463a4c238646a828b94423837922c34647cde987a099363393f19822bc008a38"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.9.0/quien_darwin_amd64.tar.gz"
      sha256 "b0f785b39f50cfbe347a41740abf5562cd6c10abb684e51f1270c6095089e2b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.9.0/quien_linux_arm64.tar.gz"
      sha256 "ec59bbd2af32f1df467520ded12b1675ac446438dd3b1deb97eb2d4740bbf638"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.9.0/quien_linux_amd64.tar.gz"
      sha256 "4d3fdbed6761e41b7c49e7da0297e2eb694d7be2b7b0c2ea0eaca00f946c7753"
    end
  end

  def install
    bin.install "quien"
  end

  test do
    assert_match "quien", shell_output("#{bin}/quien help")
  end
end
