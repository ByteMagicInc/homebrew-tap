class AgentP < Formula
  desc "A fast podcast downloader with customizable ID3 tagging"
  homepage "https://github.com/ByteMagicInc/AgentP"
  version "0.2.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ByteMagicInc/AgentP/releases/download/v0.2.0/agent-p-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "9a3a42ab5b04db55efe2afa8ffa75a2438aa26641a12705bb6acdd2587bf8034"
    else
      url "https://github.com/ByteMagicInc/AgentP/releases/download/v0.2.0/agent-p-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "2bc4d52537ceab7d35e063a99dfa32e079950339053cbb1baa332a0479046ec6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ByteMagicInc/AgentP/releases/download/v0.2.0/agent-p-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "16e9d439e64a02c13401d59c2e4dd4e7516a93783da066805a0c0a3d1bc1f48d"
    else
      url "https://github.com/ByteMagicInc/AgentP/releases/download/v0.2.0/agent-p-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "47ef4c4da46ae601929d1a3e98674db123b2017ebc053ae9c9f94cdca1b9988e"
    end
  end

  def install
    bin.install "agentp"
  end

  test do
    system "#{bin}/agentp", "--help"
  end
end
