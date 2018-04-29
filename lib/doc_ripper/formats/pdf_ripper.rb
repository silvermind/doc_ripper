module DocRipper
  module Formats
    class PdfRipper < Ripper::Base

      def rip
        @text ||= %x(pdftotext -enc UTF-8 #{to_shell(file_path)} -)
      end

    end
  end
end
