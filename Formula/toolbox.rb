# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Toolbox < Formula
  desc "ToolBox have tools for iOS"
  homepage "https://github.com/BinaryParadise/BPToolBox"
  version "0.1.1"
  url "#{homepage}/releases/download/#{version}/toolbox-#{version}-x86_64-darwin.tar.gz"
  sha256 "93fb101ad280a7ba46a2b90ca9dec93b2e29ed7f6e59b62baf8565c654786ef8"
  # depends_on "cmake" => :build

  def install
    bin.install 'toolbox'
    bin.install 'tbcore'
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
