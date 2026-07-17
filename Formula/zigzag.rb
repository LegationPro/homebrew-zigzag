class Zigzag < Formula
  desc "High-performance tool for generating markdown reports of source code directories"
  homepage "https://github.com/LegationPro/zigzag"
  version "0.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.19.0/zigzag-aarch64-macos.tar.gz"
      sha256 "45571f305b362bd06fe14c3a73ac80c704a432bf88b6071c98cc13afd03eec65"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.19.0/zigzag-x86_64-macos.tar.gz"
      sha256 "4b44ba6705cd238174ce6b0d3a27d458102c6702d29bba0d69130823e58b1b67"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.19.0/zigzag-aarch64-linux.tar.gz"
      sha256 "5d25120397370285840c0f0a1e3dce03f34ae95b5000698850f385609a0d8536"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.19.0/zigzag-x86_64-linux.tar.gz"
      sha256 "e66e40d150e64f100adff7b5de3aa564c252a1fa03b7c41351d21dc947f266ac"
    end
  end

  def install
    bin.install "zigzag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zigzag --version")
  end
end
