
class foo <  Formula
	desc "Span command line client"
	homepage "https://github.com/lab5e/spancli"
	version "0.2.6"

	on_macos do
		if Hardware::CPU.intel?
			url "https://github.com/lab5e/spancli/releases/download/v0.2.6/span.amd64-macos.zip"
			sha256 "ed9f8393e8ed816e4aef528db7b8eb086c421e69bfb86c66976473baef60801d"
		end

		if Hardware::CPU.arm?
			url "https://github.com/lab5e/spancli/releases/download/v0.2.6/span.arm64-macos.zip"
			sha256 "3942876d84b50cb1ee69b49602553250f8616a47d037269f3b5e149a7a4d6ecb"
		end
	end

	def install
		bin.install "span"
	end
end
