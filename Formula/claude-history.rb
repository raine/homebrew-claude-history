class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.16/claude-history-darwin-arm64.tar.gz"
      sha256 "81f826b31810327a8e71d8783bafe7143155a4ca2c3f899c91a8fd5953cf3e39"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.16/claude-history-darwin-amd64.tar.gz"
      sha256 "6310522eed6962b274b3f1a8330710d8df6247f9d9b5b5f28235457929122278"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.16/claude-history-linux-amd64.tar.gz"
    sha256 "f627ed9ecc238767ab42c8617527680d0f485dd6345e611691312230de5d2c49"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
