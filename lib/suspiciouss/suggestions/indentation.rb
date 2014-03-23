module Suspiciouss
  module Suggestions
    class Indentation

      def parse(line)
        "Indentation is too damn high" if line =~ /^        /
      end
    end
  end
end
