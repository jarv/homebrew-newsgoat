class Newsgoat < Formula
  desc "Terminal RSS/Atom feed reader"
  homepage "https://github.com/jarv/newsgoat"
  version "3.5.1"
  license "MIT"

  on_arm do
    url "https://github.com/jarv/newsgoat/releases/download/v3.5.1/newsgoat-3.5.1-darwin-arm64.tar.gz"
    sha256 "852b353a6991ca45a12e06227c3f1d6463cb4a2566529478e53e7dc84d417659"
  end

  on_intel do
    url "https://github.com/jarv/newsgoat/releases/download/v3.5.1/newsgoat-3.5.1-darwin-amd64.tar.gz"
    sha256 "b843333ed8eb30c4bb5cadc3558f06da4fb3278599b73da34510249627d76dd0"
  end

  def install
    bin.install "newsgoat"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/newsgoat -version").strip
  end
end
