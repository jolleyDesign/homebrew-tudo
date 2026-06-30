class Tudo < Formula
  desc "Fast, local-first todo list for your terminal"
  homepage "https://github.com/jolleyDesign/tudo"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jolleyDesign/tudo/releases/download/v1.0.4/tudo-aarch64-apple-darwin.tar.gz"
      sha256 "8ef09d266659046b02f481e167005327fa0bbd773f6458f8fdbd46d89f9c9051"
    end
    on_intel do
      url "https://github.com/jolleyDesign/tudo/releases/download/v1.0.4/tudo-x86_64-apple-darwin.tar.gz"
      sha256 "aa2e891f23a21203d7a6ca28337d8491f6161c229f615547575fd2fde445424c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jolleyDesign/tudo/releases/download/v1.0.4/tudo-aarch64-unknown-linux-musl.tar.gz"
      sha256 "75464258c11df751793eb5a599acedea68af2cc90930a4fefc259e85a4ad7dc5"
    end
    on_intel do
      url "https://github.com/jolleyDesign/tudo/releases/download/v1.0.4/tudo-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ef7d6fa71dbce0322c4a756da6a899655c5b890f244ff3db07a960d138267140"
    end
  end

  def install
    bin.install "tudo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tudo --version")
  end
end
