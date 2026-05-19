class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.60"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      odie "Intel macOS bottles are not available for this version"
    end

    url "https://github.com/raine/claude-history/releases/download/v0.1.60/claude-history-darwin-arm64.tar.gz"
    sha256 "dc58c891a90a5e45e73104b307bafb464e2dd5630de75e757b0657820e6e0a34"
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.60/claude-history-linux-amd64.tar.gz"
    sha256 "73ea9db3b2def1fed37387bcb5164f381a44f31bed9774d15c56e73a16665aa6"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
