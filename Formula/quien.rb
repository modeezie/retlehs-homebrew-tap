class Quien < Formula
  desc "A better WHOIS lookup tool with interactive TUI"
  homepage "https://github.com/retlehs/quien"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.4.0/quien_darwin_arm64.tar.gz"
      sha256 "aeffc0ceb453afb88e3fb9bc372fdeb9defdcb7565de4a78cd6bfb27d528a63e"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.4.0/quien_darwin_amd64.tar.gz"
      sha256 "c420b0cd5326ad30d146e9947802e7dfdbd976bfaf928b0080145d904c19eaca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.4.0/quien_linux_arm64.tar.gz"
      sha256 "ada374c1f7fb24f71462c70d0111adab0fd4a93c7164510a52cb8c3b92c687a2"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.4.0/quien_linux_amd64.tar.gz"
      sha256 "74a335aca976b351a0141118c38118ff0bfe80095c6cd7441ea6406c226ef221"
    end
  end

  def install
    bin.install "quien"
  end

  test do
    assert_match "quien", shell_output("#{bin}/quien help")
  end
end
