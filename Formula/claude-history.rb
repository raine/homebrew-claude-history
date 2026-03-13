class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.37"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.37/claude-history-darwin-arm64.tar.gz"
      sha256 "594d2aeaac61519806e5e6b0a1994ee714517907272908b228445929aa956450"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.37/claude-history-darwin-amd64.tar.gz"
      sha256 "94a3addd329577550d59bbbceeb0904e972e5b225f64dea7695d4ceb5d87c4d5"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.37/claude-history-linux-amd64.tar.gz"
    sha256 "fc6efd3b66a8225fca4563dba7129ba6de0f67e6aa5a19e127b06f5996722dae"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
