specs
specLayout
	<spec: #default>
	^ SpecLayout composed
		add: #label;
		add: #refreshButton origin: 1@0 corner: 1@1 offsetOrigin: -23@0 offsetCorner: 0@0;
		yourself