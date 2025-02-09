using { sap.capire.Spacefarer as my } from '../db/schema';

/**
 * Service used by support personell, i.e. the incidents' 'processors'.
 */
service ProcessorService { 
    @readonly
    entity GalacticSpacefarer as projection on my.GalacticSpacefarer;

}
annotate ProcessorService with @(requires: 'support');

/**
 * Service used by administrators to manage customers and incidents.
 */
service AdminService {
    @odata.draft.enabled
    entity GalacticSpacefarer as projection on my.GalacticSpacefarer;
    @odata.draft.enabled
    entity IntergalacticDepartment as projection on my.IntergalacticDepartment;
}

annotate AdminService with @(requires: 'admin');
