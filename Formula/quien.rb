class Quien < Formula
  desc "A better whois and domain intelligence toolkit"
  homepage "https://github.com/retlehs/quien"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.8.0/quien_darwin_arm64.tar.gz"
      sha256 "b2de27552fcb30fce7d6363d80bcf42255d69de15ead7638ea3a1679247f879e"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.8.0/quien_darwin_amd64.tar.gz"
      sha256 "fbe0edaf647c1ad6e79142e380920d5d4867b678dd2316968af6a598fbc50627"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.8.0/quien_linux_arm64.tar.gz"
      sha256 "918d1f6bd37e3d72d67234c8fc0cf2828588940f3cec6e7b913a4b093c93f32d"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.8.0/quien_linux_amd64.tar.gz"
      sha256 "e9df2436f7625a1e9392b24d70d422bc621793bccf4d83d8ddf83189e1b26784"
    end
  end

  def install
    bin.install "quien"
  end

  test do
    assert_match "quien", shell_output("#{bin}/quien help")
  end
end
