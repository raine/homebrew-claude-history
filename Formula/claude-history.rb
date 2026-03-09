class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.29"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.29/claude-history-darwin-arm64.tar.gz"
      sha256 "63ba31c0fca1e11275fe1ec2fc0c8186c0627db4e7190c2b382547ddc16e67c8"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.29/claude-history-darwin-amd64.tar.gz"
      sha256 "8d5a4eb5edf2e60675a4170c90d5201d17ee51e9075ebd469795fd23ca9a1f6b"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.29/claude-history-linux-amd64.tar.gz"
    sha256 "d997c08e5f45e741ecdafebadd410743165d822c0955d08da1c15adbe497c5ab"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
