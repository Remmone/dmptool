require 'test_helper'

class TemplateTest < ActiveSupport::TestCase

  setup do
    # Need to clear the tables until we get seed.rb out of test_helper.rb
    Template.delete_all
    
    @funder = init_funder
    @org = init_organisation
    @institution = init_institution
    @funder_org = init_funder_organisation
    
    @basic_template = init_template(@funder)
  end

  def settings(extras = {})
    {margin:    (@margin || { top: 10, bottom: 10, left: 10, right: 10 }),
     font_face: (@font_face || Settings::Template::VALID_FONT_FACES.first),
     font_size: (@font_size || 11)
    }.merge(extras)
  end

  def default_formatting
    Settings::Template::DEFAULT_SETTINGS[:formatting]
  end
  
  test "default values are properly set on template creation" do
    assert_equal false, @basic_template.published, 'expected a new template to not be published'
    assert_equal false, @basic_template.archived, 'expected a new template to not be archived'
    assert_equal 0, @basic_template.version, 'expected a new template to have a version == 0'
    assert_not_nil @basic_template.family_id, 'expected a new template to have a family_id'
    assert_equal false, @basic_template.is_default, 'expected a new template to not be the default template'
    assert @basic_template.publicly_visible?, 'expected a new funder template to be publicly visible'

    tmplt = init_template(@org)
    tmplt2 = init_template(@funder_org)
    assert tmplt.organisationally_visible?, 'expected a new non-funder template to be organisationally visible'
    assert tmplt2.organisationally_visible?, 'expected a new non-funder template to be organisationally visible'
  end

  test "required fields are required" do
    assert_not Template.new.valid?
    assert_not Template.new(version: 1, title: 'Tester').valid?, "expected the 'org' field to be required"
    assert_not Template.new(org: @funder, version: 1).valid?, "expected the 'title' field to be required"
  end
  
  test "unarchived returns only unarchived templates" do
    # Create an unarchived and an archived template (set archived after init because it will default to false on creation)
    archived = init_template(@funder, { title: 'Archived Template' })
    archived.update_attributes(archived: true)
    results = Template.unarchived
    assert_equal 1, results.length, 'expected there to be only 1 unarchived template'
    assert_equal @basic_template, results.first, 'expected the correct template to have been returned'
  end
  
  test "archived returns only archived templates" do
    # Create an unarchived and an archived template (set archived after init because it will default to false on creation)
    archived = init_template(@funder, { title: 'Archived Template' })
    archived.update_attributes(archived: true)
    results = Template.archived
    assert_equal 1, results.length, 'expected there to be only 1 archived template'
    assert_equal archived, results.first, 'expected the correct template to have been returned'
  end
  
  test "published returns only published templates" do
    published = init_template(@funder, { title: 'Published Template' })
    published.update_attributes(published: true)
    results = Template.published
    assert_equal 1, results.length, 'expected there to be only 1 published template'
    assert_equal published, results.first, 'expected the correct template to have been returned'
  end
  
  test "able to determine the latest version number" do
    version2 = @basic_template.new_version
    version2.save!
    results = Template.latest_version_per_family(@basic_template.family_id)
    assert_equal 1, results.length, 'expected only one version to be returned for the specific family'
    assert_equal version2.version, results.first.version, 'expected the new version'
  end
  
  test "able to retrieve the latest version" do
    version2 = @basic_template.new_version
    version2.save!
    result = Template.latest_version(@basic_template.family_id)
    assert_equal 1, result.length, 'expected only one version to be returned'
    assert_equal version2, result.first, 'expected the new version'
  end

  test "able to retrieve a new versions" do
    assert_equal 0, @basic_template.version, 'expected the initial template version to be zero'
    version2 = @basic_template.new_version    
    assert_equal 1, version2.version, 'expected the version number to be one more than the original template\'s'
    assert_equal @basic_template.family_id, version2.family_id, 'expected the new version to have the same family_id'
    assert_equal @basic_template.visibility, version2.visibility, 'expected the new version to have the same visibility'
    assert_equal @basic_template.is_default, version2.is_default, 'expected the new version to have the same default flag'
    assert_equal false, version2.archived, 'expected the new version to no be archived'
  end

  test "#deep_copy creates a new template object and attaches new phase objects" do
    template = scaffold_template
    assert_deep_copy(template, template.deep_copy, relations: [:phases])
  end


  
=begin
  test "family_ids scope only returns the family_ids for the specific Org" do
    Org.all.each do |org|
      family_ids = Template.valid.all.pluck(:family_id).uniq
      scoped = Template.family_ids
      assert_equal family_ids.count, scoped.count
      
      family_ids.each do |id|
        assert scoped.include?(id), "expected the family_ids scope to contain #{id} for Org: #{org.id}"
      end
      scoped.each do |id|
        assert family_ids.include?(id), "expected #{id} to be a valid family_id for Org: #{org.id}"
      end
    end
  end

  # ---------------------------------------------------
  test "current scope only returns the most recent version for each family_id" do
    Org.all.each do |org|
      Template.family_ids.each do |family_id|
        latest = Template.where(family_id: family_id).order(updated_at: :desc).first
        
        assert_equal latest, Template.current(family_id), "Expected the template.id #{latest.id} to be the current record for Org: #{org.id}, family_id: #{family_id}"
      end
    end
  end
  
  # ---------------------------------------------------
  test "published scope only returns the current published version for each family_id" do
    Org.all.each do |org|
      Template.family_ids.each do |family_id|
        latest = Template.where(family_id: family_id, published: true).order(updated_at: :desc).first

        assert_equal latest, Template.live(family_id), "Expected the #{latest.nil? ? 'template to have never been published' : "template.id #{latest.id} to be the published record"} for Org: #{org.id}, family_id: #{family_id}"
      end
    end
  end
  
  # ---------------------------------------------------
  test "deep copy" do
    verify_deep_copy(@template, ['id', 'created_at', 'updated_at'])
  end

  # ---------- has_customisations? ----------
  test "has_customisations? correctly identifies if a given org has customised the template" do
    @template.phases.first.modifiable = false
    assert @template.has_customisations?(@org.id, @template), "expected the template to have customisations if it's phase is NOT modifiable"

    @template.phases.first.modifiable = true
    assert_not @template.has_customisations?(@org.id, @template), "expected the template to NOT have customisations if it's phase is modifiable"
    
    @template.phases << Phase.new(title: 'New phase test', modifiable: false)
    assert @template.has_customisations?(@org.id, @template), "expected the template to have customisations if all of its phases is NOT modifiable"
    
    @template.phases.last.modifiable = true
    assert_not @template.has_customisations?(@org.id, @template), "expected the template to NOT have customisations if one of its phases is modifiable"
  end

  
  
  
  # ---------------------------------------------------
  test "can manage has_many relationship with Phase" do
    phase = Phase.new(title: 'Test Phase', number: 2)
    verify_has_many_relationship(@template, phase, @template.phases.count)
  end
  
  # ---------------------------------------------------
  test "can manage has_many relationship with Plan" do
    plan = Plan.new(title: 'Test Plan', visibility: :is_test)
    verify_has_many_relationship(@template, plan, @template.plans.count)
  end

  # ---------------------------------------------------
  test "can manage belongs_to relationship with Org" do
    tmplt = Template.new(title: 'My test', version: 1)
    verify_belongs_to_relationship(tmplt, @org)
  end

  test 'should be invalid when links is not a hash' do
    t = Template.new(title: 'My test', version: 1, org: @org)
    t.links = []
    refute(t.valid?)
    assert_equal(['A hash is expected for links'], t.errors.messages[:links])
  end

  test 'should be invalid when links hash does not have the expected keys' do
    t = Template.new(title: 'My test', version: 1, org: @org)
    t.links = { "foo" => [], "bar" => [] }
    refute(t.valid?)
    assert_equal(['A key funder is expected for links hash', 'A key sample_plan is expected for links hash'], t.errors.messages[:links])
  end

  test 'should be invalid when links hash keys are not compliant to object links format' do
    t = Template.new(title: 'My test', version: 1, org: @org)
    t.links = { "funder" => [{}], "sample_plan" => [{}] }
    refute(t.valid?)
    assert_equal(['The key funder does not have a valid set of object links', 'The key sample_plan does not have a valid set of object links'], t.errors.messages[:links])
  end

  test 'should be valid when links hash keys are compliant to object links format' do
    t = Template.new(title: 'My test', version: 1, org: @org)
    t.links = { "funder" => [{ "link" => "foo", "text" => "bar" }], "sample_plan" => [] }
    assert(t.valid?)
    assert_equal(nil, t.errors.messages[:links])
  end
  
  test 'should return the latest customizations for the Org' do
    tA = Template.create!(title: 'My test A', version: 0, org: @org)
    tB = Template.create!(title: 'My test B', version: 0, org: @org)
    tC = Template.create!(title: 'My test C', version: 0, org: @org)
    
    # Test 1 - Multiple versions
    cAv0 = Template.create!(title: 'My test customization A', version: 0, customization_of: tA.family_id, org: Org.first)
    cAv1 = Template.deep_copy(cAv0)
    cAv1.update_attributes(version: 1)
    
    # Test 2 - Only one version
    cBv0 = Template.create!(title: 'My test customization B', version: 0, customization_of: tB.family_id, org: Org.first)

    # Test 3 - Make sure it always returns the latest version regardless of published statuses
    cCv0 = Template.create!(title: 'My test customization C', version: 0, customization_of: tC.family_id, org: Org.first)
    cCv1 = Template.deep_copy(cCv0)
    cCv1.update_attributes(version: 1, published: true)
    cCv2 = Template.deep_copy(cCv1)
    cCv2.update_attributes(version: 2)
    
    latest = Template.org_customizations([tA, tB, tC].collect(&:family_id), Org.first.id)
    assert latest.include?(cAv1), 'expected to get customization A - version 1.'
    assert latest.include?(cBv0), 'expected to get customization B - version 0.'
    assert latest.include?(cCv2), 'expected to get customization C - version 2.'
  end
=end
end
