class Devlog < Formula
  desc "Command-line tool for tracking your day-to-day software development work"
  homepage "https://devlog-cli.org"
  url "https://github.com/wedaly/devlog/releases/download/1.0.4/devlog-1.0.4-x86_64-apple-darwin.tar.gz"
  sha256 "90c504f20e7bbbf93accd9459ad966d6e65fdfa40de76739479ec49f46eb4170"

  def install
    bin.install "devlog"
  end

  test do
    ENV["DEVLOG_HOME"] = testpath
    system bin/"devlog", "init", "-y"
  end
end
