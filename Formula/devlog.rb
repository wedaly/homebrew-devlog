class Devlog < Formula
  desc "Command-line tool for tracking your day-to-day software development work"
  homepage "https://devlog-cli.org"
  url "https://github.com/wedaly/devlog/releases/download/1.0.2/devlog-1.0.2-x86_64-apple-darwin.tar.gz"
  sha256 "534eb2902451cda0c42e10255d9c85ad8d7c89c07ab2764d89dcc656b7f246df"

  def install
    bin.install "devlog"
  end

  test do
    ENV["DEVLOG_HOME"] = testpath
    system bin/"devlog", "init", "-y"
  end
end
