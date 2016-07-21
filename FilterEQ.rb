# require 'tk'
#
# root = TkRoot.new
# root.title = "Window"
#
# Tk.getOpenFile
#
$stdout.sync = true

rootPath="E:/H/Working/copy/"
Dir.glob("#{rootPath}/*.csv") do |input_file|
  print "working on: #{input_file}..."
  bname = File.basename(input_file)
  output_file = "#{rootPath}/filtered/#{bname}"
  if not File.exists?(output_file)
    File.open(output_file, "w") do |ofile|
      File.foreach(input_file) do |iline|
        ofile.puts(iline) if iline =~ /EQ/ or iline =~ /SERIES/
      end
    end
    print "done\n"
  else
    print "exists\n"
  end
end
