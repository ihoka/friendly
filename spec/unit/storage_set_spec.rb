require File.expand_path("../../spec_helper", __FILE__)

describe "Friendly::StorageSet" do
  before do
    @doctbl  = stub("Friendly::Table", :satisfies? => false)
    @factory = stub("Friendly::StorageFactory", :document_table => @doctbl)
    @klass   = stub("Class:Friendly::Document")
    @set     = Friendly::StorageSet.new(@klass, @factory)
  end

  it "creates a document table by default" do
    @factory.should have_received(:document_table).with(@klass)
  end

  it "saves a document table by default" do
    @set.document_table.should == @doctbl
  end

  describe "when creating an index" do
    before do
      @index = stub("Friendly::Index")
      @factory.stubs(:index).returns(@index)
      @set.add_index(:some => "args")
    end

    it "adds the index to the set of indexes" do
      @set.indexes.should == [@index]
    end

    it "asks the factory to create an index" do
      @factory.should have_received(:index).with(@klass, :some => "args")
    end
  end

  describe "when creating a cache" do
    before do
      @cache = stub("Friendly::Cache")
      @factory.stubs(:cache).returns(@cache)
      @set.add_cache([:fields], :options => "")
    end

    it "adds the cache to the set of caches" do
      @set.caches.should == [@cache]
    end

    it "asks the factory to create a cache" do
      @factory.should have_received(:cache).with(@klass, [:fields], :options => "")
    end
  end

  describe "finding an index" do
    before do
      @index = stub("Friendly::Index")
      @factory.stubs(:index).returns(@index)
      @set.add_index(:doesntmatter)
    end

    describe "when a matching one exists" do
      before do
        @index.stubs(:satisfies?).returns(true)
      end

      it "returns the matching index" do
        @set.index_for({}).should == @index
      end
    end

    describe "when none match" do
      before do
        @index.stubs(:satisfies?).returns(false)
      end

      it "raises Friendly::MissingIndex" do
        lambda {
          @set.index_for({}) 
        }.should raise_error(Friendly::MissingIndex)
      end
    end
  end

  describe "#cache_for" do
    before do
      @cache = stub("Friendly::Cache")
      @factory.stubs(:cache).returns(@cache)
      @set.add_cache(:x, :y => "z")
    end

    describe "when there is a satisfying cache" do
      before do
        @cache.stubs(:satisfies?).returns(true)
      end

      it "returns the satisfying cache" do
        @set.cache_for({}).should == @cache
      end
    end

    describe "when there is no satisfying cache" do
      before do
        @cache.stubs(:satisfies?).returns(false)
      end

      it "returns nil" do
        @set.cache_for({}).should be_nil
      end
    end
  end
  
  describe "#each_store" do
    before do
      @cache = stub("Friendly::Cache")
      @index = stub("Friendly::Index")
      @factory.stubs(:cache).returns(@cache)
      @factory.stubs(:index).returns(@index)
      @set.add_cache "x", "y"
      @set.add_index :x
    end

    it "calls the block with each store that exists" do
      @accumulator = []
      @set.each_store { |s| @accumulator << s }
      @accumulator.should include(@doctbl)
      @accumulator.should include(@cache)
      @accumulator.should include(@index)
    end
  end
end
