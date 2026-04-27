class Newsgoat < Formula
  desc "Terminal RSS/Atom feed reader"
  homepage "https://github.com/jarv/newsgoat"
  version "3.4.2"
  license "MIT"

  on_arm do
    url "https://github.com/jarv/newsgoat/releases/download/v3.4.2/newsgoat-3.4.2-darwin-arm64.tar.gz"
    sha256 "8d07580907a777ac6047bf266c832ec9f6392cfb9e1c9653aa36377e8da272b0"
  end

  on_intel do
    url "https://github.com/jarv/newsgoat/releases/download/v3.4.2/newsgoat-3.4.2-darwin-amd64.tar.gz"
    sha256 "3736303a1c0fb2884dd158b4bbb3288207d9c9261f583b029cd017eb4abd909f"
  end

  def install
    bin.install "newsgoat"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/newsgoat -version").strip
  end
end
