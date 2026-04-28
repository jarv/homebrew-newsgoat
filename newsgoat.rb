class Newsgoat < Formula
  desc "Terminal RSS/Atom feed reader"
  homepage "https://github.com/jarv/newsgoat"
  version "3.6.0"
  license "MIT"

  on_arm do
    url "https://github.com/jarv/newsgoat/releases/download/v3.6.0/newsgoat-3.6.0-darwin-arm64.tar.gz"
    sha256 "105ed072e9b707b71617fe3818a62502ba6f865bdb1f92d916cf20ca4f3f0e0a"
  end

  on_intel do
    url "https://github.com/jarv/newsgoat/releases/download/v3.6.0/newsgoat-3.6.0-darwin-amd64.tar.gz"
    sha256 "1fe979ef01bc4aea1de5279dc65e88af3884678374b259059f47f8ddb163d08e"
  end

  def install
    bin.install "newsgoat"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/newsgoat -version").strip
  end
end
