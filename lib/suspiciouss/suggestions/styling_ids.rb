module Suspiciouss
  module Suggestions
    class StylingIds

      def parse(line)
        "Don't style IDs" if line =~ /#\w+[^\w]/
      end
    end
  end
end
