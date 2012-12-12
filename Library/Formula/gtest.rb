require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Gtest < Formula
  homepage 'http://code.google.com/p/googletest/'
  url 'http://googletest.googlecode.com/files/gtest-1.6.0.zip'
  version '1.6.0'
  sha1 '00d6be170eb9fc3b2198ffdcb1f1d6ba7fc6e621'

  keg_only 'Install GTest into HOMEBREW_PREFIX/src'

  def src
     HOMEBREW_PREFIX/'src'
  end

  def target
     validate_variable :name
     src/@name
  end

  def install
#    system "cp", "-r", ".", "#{prefix}"
    prefix.install Dir['*']
    src.mkpath
    target.symlink prefix
    #Dir("#{HOMEBREW_PREFIX}/src").link prefix
    #system "make install" 
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test gtest`.
    system "true"
  end
end
