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
  bname = File.basename(input_file)
  output_file = "#{rootPath}/filtered/#{bname}"
  if not File.exists?(output_file)
    File.open(output_file, "w") do |ofile|
      File.foreach(input_file) do |iline|
        ofile.puts(iline) if iline =~ /EQ/ or iline =~ /SERIES/
      end
    end
  end
end

