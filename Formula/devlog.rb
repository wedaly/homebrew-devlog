class Devlog < Formula
  desc "Command-line tool for tracking your day-to-day software development work"
  homepage "https://devlog-cli.org"
  url "https://github.com/wedaly/devlog/releases/download/1.0.0/devlog-1.0.0-x86_64-apple-darwin.tar.gz"
  sha256 "9fc8a906bf762a13360f5dae0b3536020c01329991a5c4802755611637143355"

  def install
    bin.install "devlog"
  end

  test do
    ENV["DEVLOG_HOME"] = testpath
    system bin/"devlog", "init", "-y"
  end
end
