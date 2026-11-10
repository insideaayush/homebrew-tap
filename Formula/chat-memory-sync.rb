class ChatMemorySync < Formula
  include Language::Python::Virtualenv

  desc "Searchable memory bank of your AI coding chats across tools and machines"
  homepage "https://github.com/insideaayush/chat-memory-sync"
  url "https://github.com/insideaayush/chat-memory-sync/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "fb052490f36a41509457b7987b3b1ae53b3440b175e6c144d643e7cf8bb075e8"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "chat-memory-sync", shell_output("#{bin}/chat-memory version")
  end
end
