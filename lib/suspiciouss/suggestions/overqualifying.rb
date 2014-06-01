module Suspiciouss
  module Suggestions
    class Overqualifying

      def parse(line)
        return if line.include?(':')
        "Don't overqualify your selectors" if line =~ /(div|label|a|input|span)(#|\.)\w+[^\w]/
      end
    end
  end
end
