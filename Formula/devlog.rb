class Devlog < Formula
  desc "Command-line tool for tracking your day-to-day software development work"
  homepage "https://devlog-cli.org"
  url "https://github.com/wedaly/devlog/releases/download/1.0.1/devlog-1.0.1-x86_64-apple-darwin.tar.gz"
  sha256 "8f340e5462de9788fd70c046ce71fc9737b7eb07837af6c9921603e755359f78"

  def install
    bin.install "devlog"
  end

  test do
    ENV["DEVLOG_HOME"] = testpath
    system bin/"devlog", "init", "-y"
  end
end
