class Zigzag < Formula
  desc "High-performance tool for generating markdown reports of source code directories"
  homepage "https://github.com/LegationPro/zigzag"
  version "0.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.21.0/zigzag-aarch64-macos.tar.gz"
      sha256 "b8fb42e35f8a59ef59a44b127111d5fca1d7515070ce305cfe06ea79f32ef3e3"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.21.0/zigzag-x86_64-macos.tar.gz"
      sha256 "a4f38c069648fe0c3b01a3dd42b846f46771b543ddb2df04852bd65299049c85"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.21.0/zigzag-aarch64-linux.tar.gz"
      sha256 "bf602ff120b78e3023c5d7f93a3204f1698d449c5f6161c42e3d6c77f835f912"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.21.0/zigzag-x86_64-linux.tar.gz"
      sha256 "faa5054eab2dc6385f964d41f7bb4c930a2f9b835bc2ff046a33106f5aafe0a7"
    end
  end

  def install
    bin.install "zigzag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zigzag --version")
  end
end
