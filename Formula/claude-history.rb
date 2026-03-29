class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.51"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.51/claude-history-darwin-arm64.tar.gz"
      sha256 "4bbd7001e19109822d8d7ff3111897d035ac6a26191d22e262376ece5c4ae9d8"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.51/claude-history-darwin-amd64.tar.gz"
      sha256 "9b528e16f9ce536ba252465d9b196e89d6a1fb2a8994ce443a1c79847f78c4f7"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.51/claude-history-linux-amd64.tar.gz"
    sha256 "2330064a238783f5f809f8cb7d7820e51facc75ac103a51f43c929c2135f3b6e"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
