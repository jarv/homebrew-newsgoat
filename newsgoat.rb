class Newsgoat < Formula
  desc "Terminal RSS/Atom feed reader"
  homepage "https://github.com/jarv/newsgoat"
  version "3.3.1"
  license "MIT"

  on_arm do
    url "https://github.com/jarv/newsgoat/releases/download/v3.3.1/newsgoat-3.3.1-darwin-arm64.tar.gz"
    sha256 "8de7feab0bff04d7dcf1a20ecaead2d1c12a9a6fb143d017cb2db977cc993e64"
  end

  on_intel do
    url "https://github.com/jarv/newsgoat/releases/download/v3.3.1/newsgoat-3.3.1-darwin-amd64.tar.gz"
    sha256 "8f15f17c78e5116b6cd4a3e54f9150f92657529ae3ecefe96af2074402863216"
  end

  def install
    bin.install "newsgoat"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/newsgoat -version").strip
  end
end
