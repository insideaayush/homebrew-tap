class ChatMemorySync < Formula
  include Language::Python::Virtualenv

  desc "Searchable memory bank of your AI coding chats across tools and machines"
  homepage "https://github.com/insideaayush/chat-memory-sync"
  url "https://github.com/insideaayush/chat-memory-sync/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "e7297407fe0d1b7aabf61fc5f0815f4ea7f3f024bc6305ee0cffc10057d25e25"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "chat-memory-sync", shell_output("#{bin}/chat-memory version")
  end
end
