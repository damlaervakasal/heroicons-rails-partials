require 'fileutils'

def converter(name)
    a = name.split("-")
    a[-1] = a.last[0..-5]
    a.join("_")
end 

folder_path = "../optimized/20/solid"

Dir.children("../optimized/20/solid").each do |svg_file|
    File.rename(File.join(folder_path, svg_file), File.join(folder_path, "_#{converter(svg_file)}.html.erb"))
end