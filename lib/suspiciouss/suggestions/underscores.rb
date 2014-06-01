module Suspiciouss
  module Suggestions
    class Underscores

      def parse(line)
        return if line.include?(':')
        "Don't use underscores when naming classes" if line =~ /_/
      end
    end
  end
end