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
}

annotate RiskMgmtService with @requires :
[
    'authenticated-user'
];
