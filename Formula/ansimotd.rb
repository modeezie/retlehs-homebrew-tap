class Ansimotd < Formula
  desc "Display random ANSI art in your terminal"
  homepage "https://github.com/retlehs/ansimotd"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/ansimotd/releases/download/v1.1.0/ansimotd_darwin_arm64.tar.gz"
      sha256 "6432f27131394966cac8ee252cafa30ec4552f5f9bfc4d15cd325d0868bb7744"
    else
      url "https://github.com/retlehs/ansimotd/releases/download/v1.1.0/ansimotd_darwin_amd64.tar.gz"
      sha256 "fcbe88f2a7e8c656399c4801cb2d55f3a32a83fe80a33966781bae8f2f815b13"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/ansimotd/releases/download/v1.1.0/ansimotd_linux_arm64.tar.gz"
      sha256 "acad785652189ccef38ea706ae11b674d5fa63a998fef3cf946882e7439f1d05"
    else
      url "https://github.com/retlehs/ansimotd/releases/download/v1.1.0/ansimotd_linux_amd64.tar.gz"
      sha256 "9587c0161f7eed53e8214b2c3b8da2837a5de4160fdd2ec3231eb80197f1dd0f"
    end
  end

  def install
    bin.install "ansimotd"
  end

  test do
    assert_match "ansimotd", shell_output("#{bin}/ansimotd --help")
  end
end
