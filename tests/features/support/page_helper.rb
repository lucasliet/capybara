Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each do |file|
  require file
end

module PageObjects

    def home
      @home ||= MapeandoElementosPage.new
    end
    
end