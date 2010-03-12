require File.expand_path("../../spec_helper", __FILE__)

describe "Friendly::StorageSet" do
  before do
    @doctbl  = stub("Friendly::Table")
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
end
