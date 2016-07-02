class WmiProviderPath 
  
  attr_reader(:path)
  
  def initialize
    load_paths
  end
  
  def load_paths
    return to_path_hash
  end
  
  def to_path_hash
    return @@paths.hash
  end
  
  private 
  
    def configure_path
        
    end
  
end