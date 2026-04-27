class Newsgoat < Formula
  desc "Terminal RSS/Atom feed reader"
  homepage "https://github.com/jarv/newsgoat"
  version "3.3.0"
  license "MIT"

  on_arm do
    url "https://github.com/jarv/newsgoat/releases/download/v3.3.0/newsgoat-3.3.0-darwin-arm64.tar.gz"
    sha256 "83c8a8f3a076fd441aad43e1b5358bfc1e9cc603889734b52a4b91925bb5b0f7"
  end

  on_intel do
    url "https://github.com/jarv/newsgoat/releases/download/v3.3.0/newsgoat-3.3.0-darwin-amd64.tar.gz"
    sha256 "938ac02e4c810db4fedb50ad82e92a4ff096f2257fef81342e04558c0f440cae"
  end

  def install
    bin.install "newsgoat"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/newsgoat -version").strip
  end
end
