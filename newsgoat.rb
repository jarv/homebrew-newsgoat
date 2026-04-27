class Newsgoat < Formula
  desc "Terminal RSS/Atom feed reader"
  homepage "https://github.com/jarv/newsgoat"
  version "3.5.4"
  license "MIT"

  on_arm do
    url "https://github.com/jarv/newsgoat/releases/download/v3.5.4/newsgoat-3.5.4-darwin-arm64.tar.gz"
    sha256 "60d969238aa6d76450be55a6b7748212e0f2b40ee164a0c48b34e169e539f047"
  end

  on_intel do
    url "https://github.com/jarv/newsgoat/releases/download/v3.5.4/newsgoat-3.5.4-darwin-amd64.tar.gz"
    sha256 "7b0dfa3aef73b7f467a3822368e509ae7c6c713c965be1cece8c81536451cf44"
  end

  def install
    bin.install "newsgoat"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/newsgoat -version").strip
  end
end
