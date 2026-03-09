class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.31"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.31/claude-history-darwin-arm64.tar.gz"
      sha256 "20b0e2a58fc24414e940fefc509ff0009e6021e91e957cc96591057495210a83"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.31/claude-history-darwin-amd64.tar.gz"
      sha256 "a6cbb54d837dd3e2a6403fc959d9dfa20d05c41fe0f5781959195074e93c48ec"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.31/claude-history-linux-amd64.tar.gz"
    sha256 "b89aa2fb5ade4fd2a3ac1eba5f4892cde29f0e727073ea11feb14f75569f24d6"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
