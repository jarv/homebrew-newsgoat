class Newsgoat < Formula
  desc "Terminal RSS/Atom feed reader"
  homepage "https://github.com/jarv/newsgoat"
  version "3.7.0"
  license "MIT"

  on_arm do
    url "https://github.com/jarv/newsgoat/releases/download/v3.7.0/newsgoat-3.7.0-darwin-arm64.tar.gz"
    sha256 "d0fe061805690c2b84eb6f5948515fa30952ec5fb0263347911470f6bdf80295"
  end

  on_intel do
    url "https://github.com/jarv/newsgoat/releases/download/v3.7.0/newsgoat-3.7.0-darwin-amd64.tar.gz"
    sha256 "cfff56b097ecf56be34e25e40b3b3c546a3de99648d8216f38422238c73ce25d"
  end

  def install
    bin.install "newsgoat"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/newsgoat -version").strip
  end
end
