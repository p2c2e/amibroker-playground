# require 'tk'
#
# root = TkRoot.new
# root.title = "Window"
#
# Tk.getOpenFile
#

rootPath="CHANGE THIS"
Dir.glob("#{rootPath}/*.csv") do |input_file|
  puts "working on: #{input_file}..."
  output_file = "#{input_file}_new.csv"
  File.open(output_file, "w") do |ofile|
    File.foreach(input_file) do |iline|
      ofile.puts(iline) if iline =~ /EQ/ or iline =~ /SERIES/
    end
  end
end
