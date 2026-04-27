class Newsgoat < Formula
  desc "Terminal RSS/Atom feed reader"
  homepage "https://github.com/jarv/newsgoat"
  version "3.5.3"
  license "MIT"

  on_arm do
    url "https://github.com/jarv/newsgoat/releases/download/v3.5.3/newsgoat-3.5.3-darwin-arm64.tar.gz"
    sha256 "c8e8bfe13cf5208dc8f5dd4fbf25962a947f96ab43cbf4ff88ab09493cb2a235"
  end

  on_intel do
    url "https://github.com/jarv/newsgoat/releases/download/v3.5.3/newsgoat-3.5.3-darwin-amd64.tar.gz"
    sha256 "fdec34083f8188720c798deace8e9e8f4cfdc9ae6ec38c27494afd1055b55de7"
  end

  def install
    bin.install "newsgoat"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/newsgoat -version").strip
  end
end
