class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.20/claude-history-darwin-arm64.tar.gz"
      sha256 "8b1057118973028fad46f3b5a3e78788ea2eb5684a3ca21ac29f8fac5e321ebe"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.20/claude-history-darwin-amd64.tar.gz"
      sha256 "30001459ba21c6ec379e4f75f6b824898efbac507179919acda592599b98df52"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.20/claude-history-linux-amd64.tar.gz"
    sha256 "61c3f9bf0f48a00d3e5c0f822984e034ddf68d2f1002768ab8bc8bc7f0d2615f"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
