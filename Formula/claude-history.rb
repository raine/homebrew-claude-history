class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.57"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.57/claude-history-darwin-arm64.tar.gz"
      sha256 "dc2f566ff726abca11b714604f207fe89adfd3d83ca6a642d74256e64b2be1ba"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.57/claude-history-darwin-amd64.tar.gz"
      sha256 "3729d8375c7c75a77cb9f1914dcd36f921a2bd24d709d2dab2c675b3cd8ed217"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.57/claude-history-linux-amd64.tar.gz"
    sha256 "24005c4d2145cb9e9e9e44f095dda3525ad2f705a348006d276ca86ce32759ef"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
