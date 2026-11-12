class ChatMemorySync < Formula
  include Language::Python::Virtualenv

  desc "Searchable memory bank of your AI coding chats across tools and machines"
  homepage "https://github.com/insideaayush/chat-memory-sync"
  url "https://github.com/insideaayush/chat-memory-sync/archive/refs/tags/v0.6.2.tar.gz"
  sha256 "dd0fff6340f987d4ea1f4d86a0bffc2f55c5c9b9c4ef2cb2ce75b55c67e1a794"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "chat-memory-sync", shell_output("#{bin}/chat-memory version")
  end
end
