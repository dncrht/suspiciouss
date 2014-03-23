require 'suspiciouss/result/formatter'

module Suspiciouss
  module Result
    class PlainText < Formatter

      def format
        output do |filename, errors|
          filename_errors = "Check file #{filename} for:\n"

          errors.each do |error|
            filename_errors << " #{error.strip}\n"
          end

          filename_errors
        end
      end
    end
  end
end