using { sap.capire.Spacefarer as my } from '../db/schema';

/**
 * Service used by support personell, i.e. the incidents' 'processors'.
 */
service ProcessorService { 
    entity GalacticSpacefarer as projection on my.GalacticSpacefarer;
    entity User as projection on my.User;

    @readonly
    entity IntergalacticDepartment as projection on my.IntergalacticDepartment;
}

/**
 * Service used by administrators to manage customers and incidents.
 */
service AdminService {
    entity GalacticSpacefarer as projection on my.GalacticSpacefarer;
    entity IntergalacticDepartment as projection on my.IntergalacticDepartment;
    }