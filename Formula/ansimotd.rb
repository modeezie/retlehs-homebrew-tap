class Ansimotd < Formula
  desc "Display random ANSI art in your terminal"
  homepage "https://github.com/retlehs/ansimotd"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/ansimotd/releases/download/v1.1.0/ansimotd_darwin_arm64.tar.gz"
      sha256 "e73ae71c58c54749641071e4e9d6f007136ad7f90fb280dc2d2e58015eb29446"
    else
      url "https://github.com/retlehs/ansimotd/releases/download/v1.1.0/ansimotd_darwin_amd64.tar.gz"
      sha256 "65fbfe81870241bede9696b8a354b293fb989b0bc170c9a722431a219f445cf7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/retlehs/ansimotd/releases/download/v1.1.0/ansimotd_linux_arm64.tar.gz"
      sha256 "d62e2651587afc96204fad516f907285cf0699177417eb00a3938a8d72f19d02"
    else
      url "https://github.com/retlehs/ansimotd/releases/download/v1.1.0/ansimotd_linux_amd64.tar.gz"
      sha256 "ffccaddc20245dbf080859ca0f354b43c4276f1781de9c987059e942cc9bb8f4"
    end
  end

  def install
    bin.install "ansimotd"
  end

  test do
    assert_match "ansimotd", shell_output("#{bin}/ansimotd --help")
  end
end
