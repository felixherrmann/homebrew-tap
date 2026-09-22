class SwiftPackageList < Formula
  desc "A command-line tool to generate a JSON, PLIST, Settings.bundle or PDF file with all used SPM-dependencies of an Xcode project or workspace."
  homepage "https://github.com/felixherrmann/swift-package-list"
  url "https://github.com/felixherrmann/swift-package-list/releases/download/4.10.0/swift-package-list.tar.gz"
  sha256 "72b9ed6f8017a152eba15ee1c12f00b97c39903d9109d5d1ce8710b1ee3c671b"
  license "MIT"

  def install
    bin.install "swift-package-list"
    generate_completions_from_executable(bin/"swift-package-list", "--generate-completion-script")
  end

  test do
    system "#{bin}/swift-package-list"
  end
end
