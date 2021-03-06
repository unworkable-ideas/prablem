module Prablem
  class Definitions
    Versioned = {
      "v0.1.6" => {
        antecedent: "https://www.ksdaldsa.scom/XXT-156",# i.e. ticket source / github issue parent / slack message URL # some reference that hints at the reasoning behind the necessity of this

        identifying_fragments: {
          timestamp: "#{Time.now.to_i}",
          name: "MorgOrg",
          antec_ref: "https://www.ksdaldsa.scom/XXT-156".split('/').last.upcase
        },

        id: "#{Time.now.to_i}_MorgOrg_XXT-156",# AR-Migration style timestamp+CamelCaseShortDescription

        product_base_version: {
          branch: 'mastablasta',
          commitish: '92389jd29jdqjdjad90oij22190u321908',
          last_released_semantic_ver: '9.3.4', # from where?
        },# branch+commit-ish sha(+appversion?) at time of definition

        description: 'https://www.github.com/org/repo/issues/99',# github issue url # evidence of the existence of the problem required at the referenced location
        resolution: 'https://www.github.com/org/repo/issues/200',# github PR url # evidence of resolution required at the referenced location

        ## To appear programmatically in automated release notices / changelogs ## maybe required on resolve?
        human_description: 'Short sentence to describe the Product\'s problem',
        human_resolution: 'Short sentence to describe the effects of the resolution on the product (only include implementation details if exceptionally exceptional)',

        dependencies: [], # issues spawned directly from this work whose resolution is required to satisfy the spirit+letter of the problem # it is valid (and encouraged especially in the case of exploratory work) for a resolution to consist entirely of defining a collection of new (hopefully more specific/informed) problems that require resolution.

        resolution_notes: [], # e.g. formalised list of resolution-specific implementation instructions COMPARED TO PRODUCT_BASE_VERSION (e.g. migrations, external service configurations, external application upgrades) so release complexity of work can be qualified/quantified. 

        defined_at: (Time.now),
        defined_by: 'human',

        resolved_at: (Time.now),
        resolved_by: 'human',

        ### UNDECIDED ###
        productsignoff: ['time', 'link to evidence (usually an absolute reference to a specific element in the resolution PR, but could be external CI success link)'],
        peerssatisfied: ['time', 'link to peer signoff (usually as PR comments)'],
        productstakeholdersatisfied: ['time', 'link to stakeholder signoff (usually in external ticketing system)'],
        ### ###

        #### UNDECIDED WHETHER TO ALLOW/ENFORCE INCREMENTAL LOGS ####
        #### IN PRINCIPLE THE SEMI-ARBITRARY 4 HOUR WORKTIME MAX PER BLOB SHOULD MAKE THIS REDUNDANT ####
        #### IN PRACTICE, EVERYTHING IS GROSS AND TERRIBLE ####
        time_invested_logs: [
          timestamp: 'duration'
        ],

        time_invested_override: 'duration'


        # commands

        # prablem define
        # prablem resolve
        # prablem log
      }
    }
    Current = Versioned[VERSION] || Versioned.first[1]
  end
end