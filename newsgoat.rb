class Newsgoat < Formula
  desc "Terminal RSS/Atom feed reader"
  homepage "https://github.com/jarv/newsgoat"
  version "3.4.0"
  license "MIT"

  on_arm do
    url "https://github.com/jarv/newsgoat/releases/download/v3.4.0/newsgoat-3.4.0-darwin-arm64.tar.gz"
    sha256 "b0cc23f10c5397878976e95287fe7f2112d09124ec891d0f13d68031b0cde354"
  end

  on_intel do
    url "https://github.com/jarv/newsgoat/releases/download/v3.4.0/newsgoat-3.4.0-darwin-amd64.tar.gz"
    sha256 "59eeb03e9308026fb625f7c18b010480673d1b95a02f1eaa21a7a83d815e59f1"
  end

  def install
    bin.install "newsgoat"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/newsgoat -version").strip
  end
end
