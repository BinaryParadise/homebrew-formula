# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Toolbox < Formula
  desc "ToolBox have tools for iOS"
  homepage "https://github.com/BinaryParadise/BPToolBox"
  version "0.1.2"
  url "#{homepage}/releases/download/#{version}/toolbox-#{version}-x86_64-darwin.tar.gz"
  sha256 "37c9871209cd7d6ebd13a679564af084466ea60c2c15116eb54ca1d7d68b943e"
  # depends_on "cmake" => :build

  def install
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
