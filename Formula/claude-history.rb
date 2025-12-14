class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.9/aarch64-apple-darwin.tar.gz"
      sha256 "330621b1d2373f07d56910d432803ef0e2ec3ba4ea729127005c58df72ff1298"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.9/x86_64-apple-darwin.tar.gz"
      sha256 "1d46e362f79e89d499c51d6357863268d0a218cb29acde9ba4e233d3ab530840"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.9/x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1e8e166d167567db8fb2974eeedf9251bfeffaa8ea9263dc462f45a9721a7a7f"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
