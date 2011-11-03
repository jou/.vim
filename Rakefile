require 'pathname'

desc "Symlink .vimrc and .gvimrc"
task :symlink_rcfiles do
  current_path = Pathname.new(__FILE__).realpath.dirname
  home = Pathname.new(ENV['HOME'])

  %w(vimrc gvimrc).each do |rcfile|
    home_rcfile = (home+".#{rcfile}")
    if home_rcfile.exist?
      rcfile_backup = home+".#{rcfile}.old"
      puts "Move #{home_rcfile} to #{rcfile_backup}"
      home_rcfile.rename(rcfile_backup)
    end

    puts "Symlink #{current_path+"vimrc"+rcfile} to #{home_rcfile}"
    home_rcfile.make_symlink(current_path+"vimrc"+rcfile)
  end
end

desc "Update git submodules"
task :update_submodules do
  puts "Update submodules"
  system "git submodule init"
  system "git submodule update"
end

task :default => [:update_submodules]

desc "Initialize for first checkout"
task :init => [:update_submodules, :symlink_rcfiles]
