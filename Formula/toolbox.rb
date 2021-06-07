# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Toolbox < Formula
  desc "ToolBox have tools for iOS"
  homepage "https://github.com/BinaryParadise/BPToolBox"
  version "0.2.0"
  url "#{homepage}/releases/download/#{version}/toolbox-x86_64-darwin.tar.gz"
  sha256 "39e5d2b687130e9e4cf5b7db0caf11d6d499d2fec79e5428fa3fff081f6c99df"
  # depends_on "cmake" => :build

  depends_on "imagemagick"

  def install
    # system "gem", "install", "optparse-subcommand", "--install-dir", prefix
    bin.install 'toolbox'
    bin.install 'lib'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test Peregrine`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
