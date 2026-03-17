class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.44"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.44/claude-history-darwin-arm64.tar.gz"
      sha256 "d6f9e98c2fcaaa7ee166c45a5783429253a46d5c2c05ecd7fbc3484f77722059"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.44/claude-history-darwin-amd64.tar.gz"
      sha256 "42f47f5053caf75e8f4922704e4580d4f5dd036a4462cd6c8d1024de107d8cd9"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.44/claude-history-linux-amd64.tar.gz"
    sha256 "8641b236019cba1ab6e2681298b2bcf303267a2d4ff79ed2ce241367e5f29153"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
