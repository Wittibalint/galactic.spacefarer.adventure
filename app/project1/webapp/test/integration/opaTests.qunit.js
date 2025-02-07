sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns2/project1/test/integration/FirstJourney',
		'ns2/project1/test/integration/pages/UserList',
		'ns2/project1/test/integration/pages/UserObjectPage'
    ],
    function(JourneyRunner, opaJourney, UserList, UserObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns2/project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheUserList: UserList,
					onTheUserObjectPage: UserObjectPage
                }
            },
            opaJourney.run
        );
    }
);