class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.68"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/raine/claude-history/releases/download/v0.1.68/claude-history-darwin-arm64.tar.gz"
    sha256 "3695e520ef97ee3841706141936ff9b4f4ce0ca208274dde6a324600be3cc822"
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.68/claude-history-linux-amd64.tar.gz"
    sha256 "82808604d53ba3cff7af5c64f9c31617a3a96e5f4b94ad5cdef0478659be7bf1"
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
