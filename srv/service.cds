using { BusinessPartnerA2X } from './external/BusinessPartnerA2X.cds';

using { RiskMgmt as my } from '../db/schema';

@path : '/service/RiskMgmt'
service RiskMgmtService
{
    @odata.draft.enabled
    entity Risks as
        projection on my.Risks;

    @odata.draft.enabled
    entity Mitigations as
        projection on my.Mitigations;

    entity A_BusinessPartner as
        projection on BusinessPartnerA2X.A_BusinessPartner;
}

annotate RiskMgmtService with @requires :
[
    'authenticated-user'
];
