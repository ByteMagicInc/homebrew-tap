class AgentP < Formula
  desc "A fast podcast downloader with customizable ID3 tagging"
  homepage "https://github.com/ByteMagicInc/AgentP"
  version "0.1.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ByteMagicInc/AgentP/releases/download/v0.1.0/agent-p-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "bdcdceaebd3a25943cd32b3da384589e1723d9a7b8f1fc33f18b8f5d8fe7c877"
    else
      url "https://github.com/ByteMagicInc/AgentP/releases/download/v0.1.0/agent-p-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "23c35acfe2c8f8bae9b6c6ba94e105f81d15fffcebd5a9a6f13374e3c34fbf7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ByteMagicInc/AgentP/releases/download/v0.1.0/agent-p-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eb295da87b4da555c54dfcd317217542f93ad5b4b32a84f48c67364545db8eff"
    else
      url "https://github.com/ByteMagicInc/AgentP/releases/download/v0.1.0/agent-p-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "120f599b9844cad889aa7d626cd0b4df2698102ac56edbf6cd10b35561a51117"
    end
  end

  def install
    bin.install "agentp"
  end

  test do
    system "#{bin}/agentp", "--help"
  end
end
