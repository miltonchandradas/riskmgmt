sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'RiskMgmt/Risks/test/integration/FirstJourney',
		'RiskMgmt/Risks/test/integration/pages/RisksList',
		'RiskMgmt/Risks/test/integration/pages/RisksObjectPage'
    ],
    function(JourneyRunner, opaJourney, RisksList, RisksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('RiskMgmt/Risks') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRisksList: RisksList,
					onTheRisksObjectPage: RisksObjectPage
                }
            },
            opaJourney.run
        );
    }
);