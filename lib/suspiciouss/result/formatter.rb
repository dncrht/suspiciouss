module Suspiciouss
  module Result
    class Formatter

      def initialize(result)
        @result = result
      end

      def output
        output = ''

        @result.each do |filename, errors|
          unless errors.empty?
            output << yield(filename, errors)
          end
        end

        output
      end
    end
  end
end
