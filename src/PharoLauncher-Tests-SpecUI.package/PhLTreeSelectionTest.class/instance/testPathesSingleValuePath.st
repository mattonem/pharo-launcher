tests-misc
testPathesSingleValuePath
	| model  selection |
	
	model := Array
		with:
			(TreeNodePresenter new
				content: #NodeA;
				yourself).
	
	selection := PhLTreeSelection with: model.
	
	self 
		assert: selection pathes first first
		equals: '#NodeA'