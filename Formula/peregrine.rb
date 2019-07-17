# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Peregrine < Formula
  desc "Peregrine is a router solution for iOS Application module programs."
  homepage "https://github.com/BinaryParadise/Peregrine"
  version "0.3.1"
  url "https://github.com/BinaryParadise/Peregrine/releases/download/#{version}/rakellvm-#{version}-x86_64-darwin.tar.gz"
  sha256 "de50845771b05151bd318127dcb501cef4898ba7ab4701a782d7cca515c6fec8"
  # depends_on "cmake" => :build

  def install
    clang_version = '9.0.0'

    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
    include.install Dir["include/*"]
    libexec.install Dir["libexec/*"]
    share.install Dir["share"]
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
