require 'suspiciouss/result/formatter'

module Suspiciouss
  module Result
    class Markdown < Formatter

      def format
        output do |filename, errors|
          ''.tap do |filename_errors|
            filename_errors << " - Check file #{filename} for:\n"

            filename_errors << "```\n"
            errors.each do |error|
              filename_errors << error
            end
            filename_errors << "```\n"
          end
        end
      end
    end
  end
end