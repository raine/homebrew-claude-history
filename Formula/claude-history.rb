class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.27/claude-history-darwin-arm64.tar.gz"
      sha256 "61fdd13563062865c0cff65d3e9cadf0ca053a793bb8b6eb6bffd28ea45c2c9d"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.27/claude-history-darwin-amd64.tar.gz"
      sha256 "1f5aff4167536fea4f9070e9e5c47e5ccb37a7180b168da098838f3e4debb177"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.27/claude-history-linux-amd64.tar.gz"
    sha256 "605ea3de6605d7f0cc11a381d0a6269d07c9573d85bded24900ba9cdfb2061da"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
