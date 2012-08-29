require 'couchbase'

module DocumentStore
  
  C = Couchbase.new('http://localhost:8091/pools', 'default', '' )

  def test_cb_set
    my_hash = { 
      :name => 'Jasdeep Jaitla', 
      :email => 'jasdeep@scalabl3.com',
      :twitter => '@scalabl3'
    }
    C.set( 'mykey', 0, my_hash )
  end

  def test_cb_get
    C.get( 'mykey' )
  end
end