class ChatMemorySync < Formula
  include Language::Python::Virtualenv

  desc "Searchable memory bank of your AI coding chats across tools and machines"
  homepage "https://github.com/insideaayush/chat-memory-sync"
  url "https://github.com/insideaayush/chat-memory-sync/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "65073a0364052f75182e4920a3c2625c4a8e2b77d4575ca76de48c9a07623153"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "chat-memory-sync", shell_output("#{bin}/chat-memory version")
  end
end
