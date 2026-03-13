class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.38"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.38/claude-history-darwin-arm64.tar.gz"
      sha256 "aeae8448a7f5bba1d0f5215263cfcca92630fb239d7463cbe5c3cfe9ebac4d99"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.38/claude-history-darwin-amd64.tar.gz"
      sha256 "c64fefddd7c8c60d24e8707bac41f9b05df663ee3a6d9b94ab60416ab6b1bb81"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.38/claude-history-linux-amd64.tar.gz"
    sha256 "f7a6f527f3bc7ec9f5f9ccb26e9a03835e449c463823d3281c9a3ae9a80a87f0"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
