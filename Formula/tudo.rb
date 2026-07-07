class Tudo < Formula
  desc "Fast, local-first todo list for your terminal"
  homepage "https://github.com/jolleyDesign/tudo"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jolleyDesign/tudo/releases/download/v1.1.0/tudo-aarch64-apple-darwin.tar.gz"
      sha256 "a326d90b42c4c3b13f6137e5f768caf561c5b6a0be8e41f2ed9a1e917380f33c"
    end
    on_intel do
      url "https://github.com/jolleyDesign/tudo/releases/download/v1.1.0/tudo-x86_64-apple-darwin.tar.gz"
      sha256 "1e038467426051e4ca5fe36a6d52e7da9ca213dc3a766eae946e2bcff03c6850"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jolleyDesign/tudo/releases/download/v1.1.0/tudo-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c9328ea77175008b734b975c3f882dcf40ffbd5061d3ceee983b6d80a7af0dab"
    end
    on_intel do
      url "https://github.com/jolleyDesign/tudo/releases/download/v1.1.0/tudo-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3ec5b6a8800c1ed31bab1dcc54b7cff4e810422eea1fb6d56350c05d6763867d"
    end
  end

  def install
    bin.install "tudo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tudo --version")
  end
end
