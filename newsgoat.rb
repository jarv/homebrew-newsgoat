class Newsgoat < Formula
  desc "Terminal RSS/Atom feed reader"
  homepage "https://github.com/jarv/newsgoat"
  version "3.5.0"
  license "MIT"

  on_arm do
    url "https://github.com/jarv/newsgoat/releases/download/v3.5.0/newsgoat-3.5.0-darwin-arm64.tar.gz"
    sha256 "551fdeea79f5b5f8d9ec38917f907fd352ef5815614589451d318ba641e2c998"
  end

  on_intel do
    url "https://github.com/jarv/newsgoat/releases/download/v3.5.0/newsgoat-3.5.0-darwin-amd64.tar.gz"
    sha256 "37a2cb377ff340a306046773817e2a955a4c6d2b60aff00ac49a85ce261947fc"
  end

  def install
    bin.install "newsgoat"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/newsgoat -version").strip
  end
end
