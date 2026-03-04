class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.28/claude-history-darwin-arm64.tar.gz"
      sha256 "ab1805af758640236fd3d52d83b244c6393a47578056ae041bb2ceaa3ae8513a"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.28/claude-history-darwin-amd64.tar.gz"
      sha256 "c03fed268a80775ed16751b97d011ab3f9b143823077d2a38237cdc87ba81247"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.28/claude-history-linux-amd64.tar.gz"
    sha256 "5c5455bb4a6b59a3b7a9475748e11e7c4fcdda76715d4ed312eadafdb0e09838"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
