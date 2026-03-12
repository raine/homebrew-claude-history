class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.32/claude-history-darwin-arm64.tar.gz"
      sha256 "19cd4e8de35eeca496a769e79fc3e91af28e84078a0c3fee46c03996b7ecde19"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.32/claude-history-darwin-amd64.tar.gz"
      sha256 "35c0c841008eace8450ada9e54a94f6c33d50d347839d26a5c4864ea405dc2cf"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.32/claude-history-linux-amd64.tar.gz"
    sha256 "37c9a02156430c16577394e6eab0c9caee3b9f485a9cff57ec1e83ec87bb536f"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
