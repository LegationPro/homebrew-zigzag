class Zigzag < Formula
  desc "High-performance tool for generating markdown reports of source code directories"
  homepage "https://github.com/LegationPro/zigzag"
  version "0.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.20.0/zigzag-aarch64-macos.tar.gz"
      sha256 "687845a65d6355a14fc4e137f1160a85dc3f26d6081e0511de1a2f4814d650ba"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.20.0/zigzag-x86_64-macos.tar.gz"
      sha256 "68fc74a6b0565414998cea82a467a956efa3259045e3da4cf1e4e09e5476e457"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.20.0/zigzag-aarch64-linux.tar.gz"
      sha256 "8ed979091fd7cf8679b594c3e0737621ab81f11cbc0713114cf941c686addaa8"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.20.0/zigzag-x86_64-linux.tar.gz"
      sha256 "3caa436d262e0da0891479b38b99ac01bdf05e811071e6caf4c0c157f15b1bef"
    end
  end

  def install
    bin.install "zigzag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zigzag --version")
  end
end
