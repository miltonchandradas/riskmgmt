namespace RiskMgmt;

using { BusinessPartnerA2X } from '../srv/external/BusinessPartnerA2X.cds';

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

entity Risks : managed
{
    title : String(100) not null;
    prio : String(5);
    descr : String(100);
    impact : Integer;
    criticality : Integer;
    key ID : UUID
        @Core.Computed;
    mitigations : Association to one Mitigations;
    supplier : Association to one BusinessPartnerA2X.A_BusinessPartner;
}

entity Mitigations : managed
{
    description : String(100);
    owner : String(100);
    timeline : String(100);
    key ID : UUID
        @Core.Computed;
    risks : Association to many Risks on risks.mitigations = $self;
}
