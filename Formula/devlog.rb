class Devlog < Formula
  desc "Command-line tool for tracking your day-to-day software development work"
  homepage "https://devlog-cli.org"
  url "https://github.com/wedaly/devlog/releases/download/1.0.3/devlog-1.0.3-x86_64-apple-darwin.tar.gz"
  sha256 "dc431279afa29cf74da3c54e6f80a4dc8c3d713a6c0d9df2eeaac4816c0d2b73"

  def install
    bin.install "devlog"
  end

  test do
    ENV["DEVLOG_HOME"] = testpath
    system bin/"devlog", "init", "-y"
  end
end
