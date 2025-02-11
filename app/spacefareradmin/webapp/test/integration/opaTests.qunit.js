sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/spacefareradmin/test/integration/FirstJourney',
		'ns/spacefareradmin/test/integration/pages/GalacticSpacefarerList',
		'ns/spacefareradmin/test/integration/pages/GalacticSpacefarerObjectPage'
    ],
    function(JourneyRunner, opaJourney, GalacticSpacefarerList, GalacticSpacefarerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/spacefareradmin') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheGalacticSpacefarerList: GalacticSpacefarerList,
					onTheGalacticSpacefarerObjectPage: GalacticSpacefarerObjectPage
                }
            },
            opaJourney.run
        );
    }
);