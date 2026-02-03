class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.19/claude-history-darwin-arm64.tar.gz"
      sha256 "65d31eb846de02231c982bd1114cec85b9ea7ab74373a777bd33e5d94c71e161"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.19/claude-history-darwin-amd64.tar.gz"
      sha256 "ddacdff7fef92c075d536d7dc13fb6abe2ad368b394d9c17f9299f362ffa179c"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.19/claude-history-linux-amd64.tar.gz"
    sha256 "a607f5a9be02236a310525802f645263ad89567650267bfe69ece217564c5ea9"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
