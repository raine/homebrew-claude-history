class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.30/claude-history-darwin-arm64.tar.gz"
      sha256 "083833de7173f04b695895368ec39aababd293fb000acf9aca6868723e9fc583"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.30/claude-history-darwin-amd64.tar.gz"
      sha256 "e5156eec6722438a57fd7fd33f3b97152c952df65eb2172b04cfcd729f2121dc"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.30/claude-history-linux-amd64.tar.gz"
    sha256 "7bdd552b96bd4c8dff33ef5cb2d37c77283b5c9aaf10ed568aad44a42d64a575"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
