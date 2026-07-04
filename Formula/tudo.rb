class Tudo < Formula
  desc "Fast, local-first todo list for your terminal"
  homepage "https://github.com/jolleyDesign/tudo"
  version "1.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jolleyDesign/tudo/releases/download/v1.0.6/tudo-aarch64-apple-darwin.tar.gz"
      sha256 "bd810c750b01b2894351ab621dd235d0b1b4f2d799982064077c7f4716138bf5"
    end
    on_intel do
      url "https://github.com/jolleyDesign/tudo/releases/download/v1.0.6/tudo-x86_64-apple-darwin.tar.gz"
      sha256 "2a169199c15f3831f5d1b91efa40c69163deec59345b1d9ff003923d0b7a6101"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jolleyDesign/tudo/releases/download/v1.0.6/tudo-aarch64-unknown-linux-musl.tar.gz"
      sha256 "03e9a621c536a44c89ccd106b2a45a541e76afda3a43ac40c398c4a9a3cd9161"
    end
    on_intel do
      url "https://github.com/jolleyDesign/tudo/releases/download/v1.0.6/tudo-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7df8b7700ece638e4b4beb4c37231efd6af6a76e76ee9ddbb0bbba4cfbcdb661"
    end
  end

  def install
    bin.install "tudo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tudo --version")
  end
end
