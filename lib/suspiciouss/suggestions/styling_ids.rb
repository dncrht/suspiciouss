module Suspiciouss
  module Suggestions
    class StylingIds

      def parse(line)
        return if line.include?(':')
        "Don't style IDs" if line =~ /#\w+/
      end
    end
  end
end
