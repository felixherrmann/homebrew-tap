class SwiftPackageList < Formula
  desc "A command-line tool to generate a JSON, PLIST, Settings.bundle or PDF file with all used SPM-dependencies of an Xcode project or workspace."
  homepage "https://github.com/felixherrmann/swift-package-list"
  url "https://github.com/felixherrmann/swift-package-list/releases/download/4.11.0/swift-package-list.tar.gz"
  sha256 "6fe86fcb3a7ab44125fdd5b43bba5053e31ec3ec725bb30c5adb5e9cae5c950a"
  license "MIT"

  def install
    bin.install "swift-package-list"
    generate_completions_from_executable(bin/"swift-package-list", "--generate-completion-script")
  end

  test do
    system "#{bin}/swift-package-list"
  end
end
