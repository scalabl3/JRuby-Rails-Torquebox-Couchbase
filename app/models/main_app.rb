class MainApp 
  include DocumentStore
  
  def initialize
    test_cb_set
    self
  end
  
  def get
    test_cb_get
  end
end
