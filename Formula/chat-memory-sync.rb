class ChatMemorySync < Formula
  include Language::Python::Virtualenv

  desc "Searchable memory bank of your AI coding chats across tools and machines"
  homepage "https://github.com/insideaayush/chat-memory-sync"
  url "https://github.com/insideaayush/chat-memory-sync/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "f24d7cc5bfe65c4aa403338e2d7bde9f2d596dd3b8388b140b2362a581ef1c35"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "chat-memory-sync", shell_output("#{bin}/chat-memory version")
  end
end
