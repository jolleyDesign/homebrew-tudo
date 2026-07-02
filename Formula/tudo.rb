class Tudo < Formula
  desc "Fast, local-first todo list for your terminal"
  homepage "https://github.com/jolleyDesign/tudo"
  version "1.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jolleyDesign/tudo/releases/download/v1.0.5/tudo-aarch64-apple-darwin.tar.gz"
      sha256 "78326906da095e04395c49b35525cf2eeb8020b07e7860b232d8f18a55fe2af1"
    end
    on_intel do
      url "https://github.com/jolleyDesign/tudo/releases/download/v1.0.5/tudo-x86_64-apple-darwin.tar.gz"
      sha256 "bd08a0d3a5cd5def990d0198a9627b405662268b8ed08a77a3a17c03caab8827"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jolleyDesign/tudo/releases/download/v1.0.5/tudo-aarch64-unknown-linux-musl.tar.gz"
      sha256 "294219d629e31294961cf7f7a5c969b11954b8319b74977898dd7a44e959a3bd"
    end
    on_intel do
      url "https://github.com/jolleyDesign/tudo/releases/download/v1.0.5/tudo-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d23d00a524a7eb86172331737461896253c4b482ecb6efc2c2865adad1f38e2a"
    end
  end

  def install
    bin.install "tudo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tudo --version")
  end
end
