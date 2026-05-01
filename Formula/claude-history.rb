class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.56"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.56/claude-history-darwin-arm64.tar.gz"
      sha256 "1b9e7a3b0930a4f8e372099541fc0bffa788313889601cdef3b3dda4acde5d48"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.56/claude-history-darwin-amd64.tar.gz"
      sha256 "7f024da07553906583fafb13c8e422ae05b5db45cce705f36ce1b0aba4c436fb"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.56/claude-history-linux-amd64.tar.gz"
    sha256 "e42df66d2bf9901e46cb18ec85fc6f9d8b02eb6da127b5f20357c016c9bd8a1c"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
