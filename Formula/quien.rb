class Quien < Formula
  desc "A better whois and domain intelligence toolkit"
  homepage "https://github.com/retlehs/quien"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.10.0/quien_darwin_arm64.tar.gz"
      sha256 "d77e747034d293d9076dbdc45f5d369461e97bc63cba9f26672f9c32f6a3b800"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.10.0/quien_darwin_amd64.tar.gz"
      sha256 "d37514f33c98b9c2cd0ddf2ebe8e80f85b9e9283a0477133008d043ccc42b790"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.10.0/quien_linux_arm64.tar.gz"
      sha256 "9cd2ade2bc767de756b4ce2a10efc2ce04dbce92919c14f56d87937c33b3853e"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.10.0/quien_linux_amd64.tar.gz"
      sha256 "0f117363675d2afd2a62d7a30edd1fd7d7ef39083706031964c92a76193acce7"
    end
  end

  def install
    bin.install "quien"
  end

  test do
    assert_match "quien", shell_output("#{bin}/quien help")
  end
end
