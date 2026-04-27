class Newsgoat < Formula
  desc "Terminal RSS/Atom feed reader"
  homepage "https://github.com/jarv/newsgoat"
  version "3.3.2"
  license "MIT"

  on_arm do
    url "https://github.com/jarv/newsgoat/releases/download/v3.3.2/newsgoat-3.3.2-darwin-arm64.tar.gz"
    sha256 "31a9fd20d69ec63ba16f23f08fcd520094c538d14c6d38ff45cfc391d645b447"
  end

  on_intel do
    url "https://github.com/jarv/newsgoat/releases/download/v3.3.2/newsgoat-3.3.2-darwin-amd64.tar.gz"
    sha256 "e61758d177c0a934a4ba1fa86f2134477476f20dd551a4bf8956b39520bda6bf"
  end

  def install
    bin.install "newsgoat"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/newsgoat -version").strip
  end
end
