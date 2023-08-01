# heroicons-rails-partials

My purpose in creating this repo is to make it easier to use in projects by converting icons into formats suitable for use in rail projects.


I made the svg files of the icons on the [heroicons](https://heroicons.com/) site can be used as partial in rails projects using the
```
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
```
codes.
Bu repo'yu oluşturma amacım iconları rails projelerinde kullanıma uygun formata dönüştürerek, projelerde kullanıma kolaylık sağlamak
