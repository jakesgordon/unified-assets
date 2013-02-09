require 'unified_assets/builder'
require 'unified_assets/minifier'

module UnifiedAssets

  #----------------------------------------------------------------------------

  VERSION     = "0.0.1"
  SUMMARY     = "Unify and minify JS and CSS website assets"
  DESCRIPTION = "Simple tool to automatically unify and minify javascript and css website assets"
  LIB         = File.dirname(__FILE__)

  #----------------------------------------------------------------------------

  def self.build(files, unified_file_name, options = {})
    Builder.new(files, unified_file_name, options).build
  end

  #----------------------------------------------------------------------------

end # module UnifiedAssets

