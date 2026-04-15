class Quien < Formula
  desc "A better WHOIS lookup tool with interactive TUI"
  homepage "https://github.com/retlehs/quien"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.7.0/quien_darwin_arm64.tar.gz"
      sha256 "1d422b8fd9079620d1facef47212ba3931c765b5b0f53b199738d5513a7784e9"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.7.0/quien_darwin_amd64.tar.gz"
      sha256 "2d6ddfa8600bafedeba5985fd46df1b9da3670c40a407c0abae741064dcbb01e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.7.0/quien_linux_arm64.tar.gz"
      sha256 "34599bb8b0e54b642b79ccd69cb8bb19937f0478003d26d2adbbcae6b3f24156"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.7.0/quien_linux_amd64.tar.gz"
      sha256 "14e1f5e2b5b8a5ffcf135e350da92833e3e542c95684a0cb653c9a3b07f53996"
    end
  end

  def install
    bin.install "quien"
  end

  test do
    assert_match "quien", shell_output("#{bin}/quien help")
  end
end
