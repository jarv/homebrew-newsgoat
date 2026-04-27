class Newsgoat < Formula
  desc "Terminal RSS/Atom feed reader"
  homepage "https://github.com/jarv/newsgoat"
  version "3.5.2"
  license "MIT"

  on_arm do
    url "https://github.com/jarv/newsgoat/releases/download/v3.5.2/newsgoat-3.5.2-darwin-arm64.tar.gz"
    sha256 "e02a2a742ea3184f0379f5d362ea48f0de6e60fbb9efdce872e5dcb2b606e0fc"
  end

  on_intel do
    url "https://github.com/jarv/newsgoat/releases/download/v3.5.2/newsgoat-3.5.2-darwin-amd64.tar.gz"
    sha256 "c7ffe2c930139b6309f02b11875e78280039d4dde6f1ee44500f92be3f132a4b"
  end

  def install
    bin.install "newsgoat"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/newsgoat -version").strip
  end
end
