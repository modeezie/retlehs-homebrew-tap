class Quien < Formula
  desc "A better whois and domain intelligence toolkit"
  homepage "https://github.com/retlehs/quien"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.7.2/quien_darwin_arm64.tar.gz"
      sha256 "f7016c8de9c54e42a5d5385fe9adc7f2dddb4bf248d496a84c37d1a6c238bdc7"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.7.2/quien_darwin_amd64.tar.gz"
      sha256 "e2952caf3f0db92a00ccf0f0fc5a3f3744a0ab99f706b038a133aee9c9450a9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/quien/releases/download/v0.7.2/quien_linux_arm64.tar.gz"
      sha256 "4088501cec58a88da95c2fe151d7ed8fbe0ec9f22b0c628012e402c8b3579347"
    else
      url "https://github.com/retlehs/quien/releases/download/v0.7.2/quien_linux_amd64.tar.gz"
      sha256 "f506b8310ab72283d27733e89df9c1f3775f35e68020494b4ae5cbf2784bc2c6"
    end
  end

  def install
    bin.install "quien"
  end

  test do
    assert_match "quien", shell_output("#{bin}/quien help")
  end
end
