class Tudo < Formula
  desc "Fast, local-first todo list for your terminal"
  homepage "https://github.com/jolleyDesign/tudo"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jolleyDesign/tudo/releases/download/v1.0.4/tudo-aarch64-apple-darwin.tar.gz"
      sha256 "73eac6930d9df03a2d16698afc8126f50a5c419897f908b105d3f29db4fd09a4"
    end
    on_intel do
      url "https://github.com/jolleyDesign/tudo/releases/download/v1.0.4/tudo-x86_64-apple-darwin.tar.gz"
      sha256 "e435a0df4021d185853fe7a4037b177987cd37e0f359d9493a003d50ef280c5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jolleyDesign/tudo/releases/download/v1.0.4/tudo-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b870c39689c6696ce8a70c7660a8e200ec01c336230f90d474732ea127215a64"
    end
    on_intel do
      url "https://github.com/jolleyDesign/tudo/releases/download/v1.0.4/tudo-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3efd594dedca0e50ebc085a0d457a8b240df8b11588dac80fee2071565702daf"
    end
  end

  def install
    bin.install "tudo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tudo --version")
  end
end
