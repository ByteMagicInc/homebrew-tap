class AgentP < Formula
  desc "A fast podcast downloader with customizable ID3 tagging"
  homepage "https://github.com/ByteMagicInc/AgentP"
  version "0.4.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ByteMagicInc/AgentP/releases/download/v0.4.0/agent-p-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "35bbe5ae6f234fa2f6ff86e40f82fed47918f6ddd518d2e7e80a41b34f601b02"
    else
      url "https://github.com/ByteMagicInc/AgentP/releases/download/v0.4.0/agent-p-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "54490080be98edcfd7f0aa501143947a56221f0af6342c2a07fb27ab8a44ac15"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ByteMagicInc/AgentP/releases/download/v0.4.0/agent-p-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "93e1606ef85d1a8fc7cdb8d54036982c2e11b64784943e5b545773a26d018b2b"
    else
      url "https://github.com/ByteMagicInc/AgentP/releases/download/v0.4.0/agent-p-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f86ab20e0fe3986cb3b46814376d7a26bacd65a8c2d8c4d5e7c0c0cf7bdb489f"
    end
  end

  def install
    bin.install "agentp"
  end

  def caveats
    <<~CAVEATS
      AgentP can convert M4A, AAC, Ogg, FLAC and WAV episodes to MP3 with the
      optional Convert To MP3 setting. That needs ffmpeg:
        brew install ffmpeg
    CAVEATS
  end

  test do
    system "#{bin}/agentp", "--help"
  end
end
