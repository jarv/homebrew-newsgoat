class Newsgoat < Formula
  desc "Terminal RSS/Atom feed reader"
  homepage "https://github.com/jarv/newsgoat"
  version "3.2.1"
  license "MIT"

  on_arm do
    url "https://github.com/jarv/newsgoat/releases/download/v3.2.1/newsgoat-3.2.1-darwin-arm64.tar.gz"
    sha256 "d9d7b5873d728f59f965c48ed241d3dc5afe39eaf3e2f9f815c8acf637d54b08"
  end

  on_intel do
    url "https://github.com/jarv/newsgoat/releases/download/v3.2.1/newsgoat-3.2.1-darwin-amd64.tar.gz"
    sha256 "27f8a93f82a18039eee38584a1bc4bc3d41bc1ea23cbdb66e9c7ca73027d16eb"
  end

  def install
    bin.install "newsgoat"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/newsgoat -version").strip
  end
end
