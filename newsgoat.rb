class Newsgoat < Formula
  desc "Terminal RSS/Atom feed reader"
  homepage "https://github.com/jarv/newsgoat"
  version "3.4.1"
  license "MIT"

  on_arm do
    url "https://github.com/jarv/newsgoat/releases/download/v3.4.1/newsgoat-3.4.1-darwin-arm64.tar.gz"
    sha256 "49483356b0807cb025ff9b91853691450e597c334e295c9b792a9961c48db2ec"
  end

  on_intel do
    url "https://github.com/jarv/newsgoat/releases/download/v3.4.1/newsgoat-3.4.1-darwin-amd64.tar.gz"
    sha256 "f4fa84e1110af367fa4d2e350c0c6a5894572393ecbb6642b8eea828d775ba7a"
  end

  def install
    bin.install "newsgoat"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/newsgoat -version").strip
  end
end
