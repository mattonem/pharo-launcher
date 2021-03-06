baselines
baseline12: spec
	<version: '1.2-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/Pharo/PharoLauncher/main/'.
		spec 
			project: 'JSON' with: [
				spec
					className: #ConfigurationOfJSON;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/JSON/main/' ];
			project: 'OSProcess' with: [
				spec
					className: #ConfigurationOfOSProcess;
					versionString: #'stable';
					loads: #('Core with Output' );
					repository: 'http://www.squeaksource.com/MetacelloRepository' ];
			project: 'ProcessWrapper' with: [
				spec
					className: #ConfigurationOfProcessWrapper;
					versionString: #'bleedingEdge';
					loads: #('Core' );
					repository: 'http://smalltalkhub.com/mc/hernan/ProcessWrapper/main/' ];
			project: 'Ston' with: [
				spec
					className: #ConfigurationOfSton;
					versionString: #'stable';
					repository: 'http://ss3.gemstone.com/ss/STON' ];
			project: 'XMLParser' with: [
				spec
					className: #ConfigurationOfXMLParser;
					versionString: #'stable';
					loads: #('Core' );
					repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLParser/main/' ].
		spec 
			package: #'PharoLauncher-Core' with: [
				spec requires: #(#'PharoLauncher-Download' 'XMLParser' 'Ston' 'JSON' ). ];
			package: #'PharoLauncher-Download' with: [
				spec requires: #('OSProcess' 'ProcessWrapper'). ];
			package: #'PharoLauncher-Spec' with: [
				spec requires: #(#'PharoLauncher-Core' ). ];
			package: #'PharoLauncher-Tests-Core' with: [
				spec requires: #(#'PharoLauncher-Core' ). ];
			package: #'PharoLauncher-Tests-Download' with: [
				spec requires: #(#'PharoLauncher-Download' ). ].
		spec 
			group: 'Default' with: #(#'PharoLauncher-Tests-Core' #'PharoLauncher-Tests-Download' #'PharoLauncher-Core' #'PharoLauncher-Download' #'PharoLauncher-Spec' );
			group: 'Download' with: #(#'PharoLauncher-Download' #'PharoLauncher-Tests-Download' ). ].
