module Suspiciouss
  module Suggestions
    class ZeroUnits

      def parse(line)
        "Don't add the unit if zero" if line =~ / (0px|0em|0rem|0%)/
      end
    end
  end
end
