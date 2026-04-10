class Ansimotd < Formula
  desc "Display random ANSI art in your terminal"
  homepage "https://github.com/retlehs/ansimotd"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/ansimotd/releases/download/v1.0.2/ansimotd_darwin_arm64.tar.gz"
      sha256 "c216efdace25f7536371bc93ebcfd4655680a36da96af5cefcc58418414bec98"
    else
      url "https://github.com/retlehs/ansimotd/releases/download/v1.0.2/ansimotd_darwin_amd64.tar.gz"
      sha256 "1949569d93dcdac0c2a2734145323b7f80585e78d969be2e0b7a3e6091fd7604"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/ansimotd/releases/download/v1.0.2/ansimotd_linux_arm64.tar.gz"
      sha256 "f1de8fbfb94c4cf343d619c779df7e0a9ad8942c41d5f74c289a6200d4b0ca82"
    else
      url "https://github.com/retlehs/ansimotd/releases/download/v1.0.2/ansimotd_linux_amd64.tar.gz"
      sha256 "1770dd1d13e4682798d12bff734525ed5d1f7b6fa2bb045fc91c41f3d6b7d230"
    end
  end

  def install
    bin.install "ansimotd"
  end

  test do
    assert_match "ansimotd", shell_output("#{bin}/ansimotd --help")
  end
end
