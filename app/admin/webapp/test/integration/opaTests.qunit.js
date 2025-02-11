sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'admin/admin/test/integration/FirstJourney',
		'admin/admin/test/integration/pages/IntergalacticDepartmentList',
		'admin/admin/test/integration/pages/IntergalacticDepartmentObjectPage'
    ],
    function(JourneyRunner, opaJourney, IntergalacticDepartmentList, IntergalacticDepartmentObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('admin/admin') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheIntergalacticDepartmentList: IntergalacticDepartmentList,
					onTheIntergalacticDepartmentObjectPage: IntergalacticDepartmentObjectPage
                }
            },
            opaJourney.run
        );
    }
);