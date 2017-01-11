require "git"
require "github"
require "commander"
require "prablem/version"

module Prablem
  class Cmd
    include Commander::Methods
    

    # Set the dir of the repo we care about
    working_dir = "/home/ubuntor/code/..." 
    g = Git.open(working_dir)#, :log => Logger.new(STDOUT))

    # define the custom command proc
    g_executor = Git::Lib.new(g)
     
    # Checkout and update the branch we care about
    feature_branch = '...'
    GitCmder = 
      Proc.new do |cmd, g_exec = g_executor|
        g_executor.send(:command, cmd)
      end 
    GitCmder.call "checkout #{feature_branch}"
    GitCmder.call "pull origin #{feature_branch}"

  end
end
