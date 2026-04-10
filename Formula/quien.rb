class Quien < Formula
  desc "A better WHOIS lookup tool with interactive TUI"
  homepage "https://github.com/retlehs/quien"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.1.1/quien_darwin_arm64.tar.gz"
      sha256 "9725801232b4704363ba5f462d4a9aded0e721e7f7c55cc2b42f386ada20e79b"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.1.1/quien_darwin_amd64.tar.gz"
      sha256 "cac24d17c9b56afd43eaa5ba88f33d5d8cc1379ea94f98fc8075374cad74f988"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.1.1/quien_linux_arm64.tar.gz"
      sha256 "4ab8d29c9105b3b7aa334df7b59f34ce11d3e5702b154ff46338a0baa82eea5c"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.1.1/quien_linux_amd64.tar.gz"
      sha256 "17a8e93cab293bacc3c7fc191a63354ac6390088a1381bfb273b4a017820b98a"
    end
  end

  def install
    bin.install "quien"
  end

  test do
    assert_match "quien", shell_output("#{bin}/quien help")
  end
end
