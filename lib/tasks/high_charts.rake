# Below implement highcharts js files bootstrap logic
def say(msg, &block)
  print "#{msg}..."

  if block_given?
      yield
    puts " Done."
  end
end

namespace :highcharts do
  desc "Update highcharts.js from latest Builds on Highcharts codebase: http://code.highcharts.com/"
  task :update => [:core]
  task :core do
    say "Grabbing Core from Highcharts codebase..." do
      sh "mkdir -p assets/javascripts/highcharts/modules/"
      sh "mkdir -p assets/javascripts/highcharts/adapters/"

      sh "curl -# http://code.highcharts.com/highcharts.src.js -L --compressed -o app/assets/javascripts/highcharts.js"
      sh "curl -# http://code.highcharts.com/highcharts-more.src.js -L --compressed -o app/assets/javascripts/highcharts/highcharts-more.js"
      sh "curl -# http://code.highcharts.com/highcharts-3d.src.js -L --compressed -o app/assets/javascripts/highcharts/highcharts-3d.js"

      sh "curl -# http://code.highcharts.com/modules/exporting.src.js -L --compressed -o app/assets/javascripts/highcharts/modules/exporting.js"
      sh "curl -# http://code.highcharts.com/modules/annotations.src.js -L --compressed -o app/assets/javascripts/highcharts/modules/annotations.js"
      sh "curl -# http://code.highcharts.com/modules/canvas-tools.src.js -L --compressed -o app/assets/javascripts/highcharts/modules/canvas-tools.js"
      sh "curl -# http://code.highcharts.com/modules/data.src.js -L --compressed -o app/assets/javascripts/highcharts/modules/data.js"
      sh "curl -# http://code.highcharts.com/modules/drilldown.src.js -L --compressed -o app/assets/javascripts/highcharts/modules/drilldown.js"
      sh "curl -# http://code.highcharts.com/modules/exporting.src.js -L --compressed -o app/assets/javascripts/highcharts/modules/exporting.js"
      sh "curl -# http://code.highcharts.com/modules/funnel.src.js -L --compressed -o app/assets/javascripts/highcharts/modules/funnel.js"
      sh "curl -# http://code.highcharts.com/modules/heatmap.src.js -L --compressed -o app/assets/javascripts/highcharts/modules/heatmap.js"
      sh "curl -# http://code.highcharts.com/modules/map.src.js -L --compressed -o app/assets/javascripts/highcharts/modules/map.js"
      sh "curl -# http://code.highcharts.com/modules/no-data-to-display.src.js -L --compressed -o app/assets/javascripts/highcharts/modules/no-data-to-display.js"
      sh "curl -# http://code.highcharts.com/modules/solid-gauge.src.js -L --compressed -o app/assets/javascripts/highcharts/modules/solid-gauge.js"

      sh "curl -# http://code.highcharts.com/adapters/mootools-adapter.srapp/c.js -L --compressed -o app/assets/javascripts/highcharts/adapters/mootools-adapter.js"
      sh "curl -# http://code.highcharts.com/adapters/prototype-adapter.src.js -L --compressed -o app/assets/javascripts/highcharts/adapters/prototype-adapter.js"
      sh "curl -# http://code.highcharts.com/adapters/standalone-framework.src.js -L --compressed -o app/assets/javascripts/highcharts/adapters/standalone-framework.js"
    end
  end
end
