class Devlog < Formula
  desc "Command-line tool for tracking your day-to-day software development work"
  homepage "https://devlog-cli.org"
  url "https://github.com/wedaly/devlog/releases/download/0.2.0/devlog-0.2.0-x86_64-apple-darwin.tar.gz"
  sha256 "f0b9c63ed2dc5ec1e95ebe4fa7f9b3e49dba622d1719906bd995fba6d621ced2"

  def install
    bin.install "devlog"
    prefix.install "integrations"
  end

  def caveats; <<~EOS
    To enable vim syntax highlighting, add this line to your .vimrc:
      set rtp+=#{opt_prefix}/integrations/vim

    IMPORTANT: add this line BEFORE calling `syntax enable`.
  EOS
  end
end
