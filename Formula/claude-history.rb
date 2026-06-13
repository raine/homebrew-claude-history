class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.67"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/raine/claude-history/releases/download/v0.1.67/claude-history-darwin-arm64.tar.gz"
    sha256 "39fd91be6a42278e3a329ebb6898b74dea87736cbbf9d455ef9f0376e259c867"
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.67/claude-history-linux-amd64.tar.gz"
    sha256 "6d1d54a0f8be2835baeead4bc71c8181c35e5a496a230e3a504f671b73f2e4e7"
  end

  def install
    bin.install "claude-history"
    lib.install Dir["lib/*"]
    bin.install_symlink lib/"libonnxruntime.dylib" if OS.mac?
    bin.install_symlink lib/"libonnxruntime.so" if OS.linux?
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
