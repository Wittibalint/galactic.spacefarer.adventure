sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/spacefarer/test/integration/FirstJourney',
		'ns/spacefarer/test/integration/pages/GalacticSpacefarerList',
		'ns/spacefarer/test/integration/pages/GalacticSpacefarerObjectPage'
    ],
    function(JourneyRunner, opaJourney, GalacticSpacefarerList, GalacticSpacefarerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/spacefarer') + '/index.html'
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