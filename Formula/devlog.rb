class Devlog < Formula
  desc "Command-line tool for tracking your day-to-day software development work"
  homepage "https://devlog-cli.org"
  url "https://github.com/wedaly/devlog/releases/download/1.1.0/devlog-1.1.0-x86_64-apple-darwin.tar.gz"
  sha256 "00d27d81f709ee0c484501a5406b9615009de6ac48e2eedcf08ac35f1028615d"

  def install
    bin.install "devlog"
  end

  test do
    ENV["DEVLOG_HOME"] = testpath
    system bin/"devlog", "init", "-y"
  end
end
