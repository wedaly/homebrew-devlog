class Devlog < Formula
  desc "Command-line tool for tracking your day-to-day software development work"
  homepage "https://devlog-cli.org"
  url "https://github.com/wedaly/devlog/releases/download/0.3.0/devlog-0.3.0-x86_64-apple-darwin.tar.gz"
  sha256 "104c35a184a2ee0fb8e5802a6e3580045e33c20cf85bce609c4c0a2087614a1e"

  def install
    bin.install "devlog"
    prefix.install "integrations"
  end

  def caveats; <<~EOS
    To enable vim syntax highlighting, add this line to your .vimrc
    anywhere before `syntax enable`:
      set rtp+=#{opt_prefix}/integrations/vim
  EOS
  end
end
