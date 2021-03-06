/*jshint node:true*/
'use strict';
const Model = require('src/base/BaseModel');
const BaseDAO = require('src/base/BaseDao');
const checkType = require('src/util/checkType');
class astScenarioModel extends BaseDAO {
    constructor() {
        const storedProc = {
            Find:   'ast_GetScenario',
            Insert: 'ast_InsScenario',
            Update: 'ast_UpdScenario',
            Delete: 'ast_DelScenario'
        };
        super(storedProc);

        this.Insert     = Insert;
        this.Update     = Update;
        this.FindPost   = FindPost;
        this.FindPostIn   = FindPostIn;
    }
}
class FindPostIn extends Model.Get {
    constructor(p) {
        super(p);
        const d = this.Data;
        d.token                         = p.token                                       ?   p.token                                 : null;
        /*d.HIID                          = p.HIID     !== undefined                      ?   p.HIID                                  : null;*/
        d.id_scenario                   = p.id_scenario                                 ?   p.id_scenario                           : null;
        d.name_scenario                 = p.name_scenario                               ?   p.name_scenario                         : null;
        d.callerID                      = p.callerID                                    ?   p.callerID                              : null;
        d.TimeBegin                     = p.TimeBegin                                   ?   p.TimeBegin                             : null;
        d.TimeEnd                       = p.TimeEnd                                     ?   p.TimeEnd                               : null;
        d.DaysCall                      = p.DaysCall                                    ?   p.DaysCall                              : null;
        d.RecallCount                   = p.RecallCount  !== undefined                  ?   p.RecallCount                           : 0;
        d.RecallAfterMin                = p.RecallAfterMin !== undefined                              ?   p.RecallAfterMin                        : 0;
        d.RecallCountPerDay             = p.RecallCountPerDay !== undefined                           ?   p.RecallCountPerDay                     : 0;
        d.RecallDaysCount               = p.RecallDaysCount    !== undefined                          ?   p.RecallDaysCount                       : 0;
        d.RecallAfterPeriod             = p.RecallAfterPeriod  !== undefined                          ?   p.RecallAfterPeriod                     : 0;
        d.AutoDial                      = p.AutoDial                                    ?   p.AutoDial                              : null;
        d.IsRecallForSuccess            = checkType(p.IsRecallForSuccess)            ?   Boolean(p.IsRecallForSuccess)        : null;
        d.IsCallToOtherClientNumbers    = checkType(p.IsCallToOtherClientNumbers)    ?   Boolean(p.IsCallToOtherClientNumbers): null;
        d.IsCheckCallFromOther          = checkType(p.IsCheckCallFromOther)          ?   Boolean(p.IsCheckCallFromOther)      : null;
        d.AllowPrefix                   = p.AllowPrefix                                 ?   p.AllowPrefix.filter(x => x).join()     : null;
        d.destination                   = p.destination                                 ?   p.destination                           : null;
        d.destdata                      = p.destdata                                    ?   p.destdata                              : null;
        d.destdata2                     = p.destdata2                                   ?   p.destdata2                             : null;
        d.target                        = p.target                                      ?   p.target                                : null;
        d.roIDs                         = p.roIDs                                        ?   p.roIDs.filter(x => x).join()            : null;
        d.isFirstClient                 = checkType(p.isFirstClient)                 ?   Boolean(p.isFirstClient)             : null;
        d.limitChecker                   = p.limitChecker                                 ?   p.limitChecker                           : null;
        d.limitStatuses                         = p.limitStatuses                                        ?   p.limitStatuses.filter(x => x).join()            : null;
        d.isActive                      = checkType(p.isActive)                      ?   Boolean(p.isActive)                  : null;
    }
}
class FindPost extends Model.Get {
    constructor(p) {
        super(p);
        const d = this.Data;
        d.HIID                          = p.HIID     !== undefined                      ?   p.HIID                                  : null;
        d.id_scenario                   = p.id_scenario                                 ?   p.id_scenario                           : null;
        d.name_scenario                 = p.name_scenario                               ?   p.name_scenario                         : null;
        d.callerID                      = p.callerID                                    ?   p.callerID                              : null;
        d.TimeBegin                     = p.TimeBegin                                   ?   p.TimeBegin                             : null;
        d.TimeEnd                       = p.TimeEnd                                     ?   p.TimeEnd                               : null;
        d.DaysCall                      = p.DaysCall                                    ?   p.DaysCall                              : null;
        d.RecallCount                   = p.RecallCount  !== undefined                  ?   p.RecallCount                           : 0;
        d.RecallAfterMin                = p.RecallAfterMin !== undefined                              ?   p.RecallAfterMin                        : 0;
        d.RecallCountPerDay             = p.RecallCountPerDay !== undefined                           ?   p.RecallCountPerDay                     : 0;
        d.RecallDaysCount               = p.RecallDaysCount    !== undefined                          ?   p.RecallDaysCount                       : 0;
        d.RecallAfterPeriod             = p.RecallAfterPeriod  !== undefined                          ?   p.RecallAfterPeriod                     : 0;
        d.AutoDial                      = p.AutoDial                                    ?   p.AutoDial                              : null;
        d.IsRecallForSuccess            = checkType(p.IsRecallForSuccess[0])            ?   Boolean(p.IsRecallForSuccess[0])        : null;
        d.IsCallToOtherClientNumbers    = checkType(p.IsCallToOtherClientNumbers[0])    ?   Boolean(p.IsCallToOtherClientNumbers[0]): null;
        d.IsCheckCallFromOther          = checkType(p.IsCheckCallFromOther[0])          ?   Boolean(p.IsCheckCallFromOther[0])      : null;
        d.AllowPrefix                   = p.AllowPrefix                                 ?   p.AllowPrefix                           : null;
        d.destination                   = p.destination                                 ?   p.destination                           : null;
        d.destinationName               = p.destinationName                             ?   p.destinationName                       : null;
        d.destdata                      = p.destdata                                    ?   p.destdata                              : null;
        d.destdataName                  = p.destdataName                                ?   p.destdataName                          : null;
        d.destdata2                     = p.destdata2                                   ?   p.destdata2                             : null;
        d.target                        = p.target                                      ?   p.target                                : null;
        d.roIDs                         = p.roIDs                                       ?   p.roIDs                                 : null;
        d.isFirstClient                 = checkType(p.isFirstClient[0])                 ?   Boolean(p.isFirstClient[0])             : null;
        d.limitChecker                  = p.limitChecker                                ?   p.limitChecker                           : null;
        d.limitStatuses                 = p.limitStatuses                               ?   p.limitStatuses           : null;
        d.isActive                      = checkType(p.isActive[0])                      ?   Boolean(p.isActive[0])                  : null;
        d.Created               = p.Created                 ?   p.Created.toISOString().replace(/\..+/, '')                             : null;
        d.Changed               = p.Changed                 ?   p.Changed.toISOString().replace(/\..+/, '')                             : null;
    }
}
class Insert extends Model.Post {
    constructor(p) {
        super(p);
        const d = this.Data;
        d.token                         = p.token                                       ?   p.token                                 : null;
        d.id_scenario                   = p.id_scenario                                 ?   p.id_scenario                           : null;
        d.name_scenario                 = p.name_scenario                               ?   p.name_scenario                         : null;
        d.callerID                      = p.callerID                                    ?   p.callerID                              : null;
        d.TimeBegin                     = p.TimeBegin                                   ?   p.TimeBegin                             : null;
        d.TimeEnd                       = p.TimeEnd                                     ?   p.TimeEnd                               : null;
        d.DaysCall                      = p.DaysCall                                    ?   p.DaysCall                              : null;
        d.RecallCount                   = p.RecallCount  !== undefined                  ?   p.RecallCount                           : 0;
        d.RecallAfterMin                = p.RecallAfterMin !== undefined                              ?   p.RecallAfterMin                        : 0;
        d.RecallCountPerDay             = p.RecallCountPerDay !== undefined                           ?   p.RecallCountPerDay                     : 0;
        d.RecallDaysCount               = p.RecallDaysCount    !== undefined                          ?   p.RecallDaysCount                       : 0;
        d.RecallAfterPeriod             = p.RecallAfterPeriod  !== undefined                          ?   p.RecallAfterPeriod                     : 0;
        d.AutoDial                      = p.AutoDial                                    ?   p.AutoDial                              : null;
        d.IsRecallForSuccess            = checkType(p.IsRecallForSuccess)               ?   Boolean(p.IsRecallForSuccess)           : false;
        d.IsCallToOtherClientNumbers    = checkType(p.IsCallToOtherClientNumbers)       ?   Boolean(p.IsCallToOtherClientNumbers)   : false;
        d.IsCheckCallFromOther          = checkType(p.IsCheckCallFromOther)             ?   Boolean(p.IsCheckCallFromOther)         : false;
        d.AllowPrefix                   = p.AllowPrefix                                 ?   p.AllowPrefix.filter(x => x).join()     : null;
        d.destination                   = p.destination                                 ?   p.destination                           : null;
        d.destdata                      = p.destdata                                    ?   p.destdata                              : null;
        d.destdata2                     = p.destdata2                                   ?   p.destdata2                             : null;
        d.target                        = p.target                                      ?   p.target                                : null;
        d.roIDs                         = p.roIDs                                       ?   p.roIDs.filter(x => x).join()            : null;
        d.isFirstClient                 = checkType(p.isFirstClient)                    ?   Boolean(p.isFirstClient)                : false;
        d.limitChecker                  = p.limitChecker                                ?   p.limitChecker                           : null;
        d.limitStatuses                 = p.limitStatuses                               ?   p.limitStatuses.filter(x => x).join()            : null;
        d.isActive                      = checkType(p.isActive)                         ?   Boolean(p.isActive)                     : false;
    }
}
class Update extends Model.Put {
    constructor(p) {
        super(p);
        const d = this.Data;
        d.token                         = p.token                                       ?   p.token                                 : null;
        d.HIID = p.HIID;
        d.id_scenario                   = p.id_scenario                                 ?   p.id_scenario                           : null;
        d.name_scenario                 = p.name_scenario                               ?   p.name_scenario                         : null;
        d.callerID                      = p.callerID                                    ?   p.callerID                              : null;
        d.TimeBegin                     = p.TimeBegin                                   ?   p.TimeBegin                             : null;
        d.TimeEnd                       = p.TimeEnd                                     ?   p.TimeEnd                               : null;
        d.DaysCall                      = p.DaysCall                                    ?   p.DaysCall                              : null;
        d.RecallCount                   = p.RecallCount  !== undefined                  ?   p.RecallCount                           : 0;
        d.RecallAfterMin                = p.RecallAfterMin !== undefined                              ?   p.RecallAfterMin                        : 0;
        d.RecallCountPerDay             = p.RecallCountPerDay !== undefined                           ?   p.RecallCountPerDay                     : 0;
        d.RecallDaysCount               = p.RecallDaysCount    !== undefined                          ?   p.RecallDaysCount                       : 0;
        d.RecallAfterPeriod             = p.RecallAfterPeriod  !== undefined                          ?   p.RecallAfterPeriod                     : 0;
        d.AutoDial                      = p.AutoDial                                    ?   p.AutoDial                              : null;
        d.IsRecallForSuccess            = checkType(p.IsRecallForSuccess)               ?   Boolean(p.IsRecallForSuccess)           : false;
        d.IsCallToOtherClientNumbers    = checkType(p.IsCallToOtherClientNumbers)       ?   Boolean(p.IsCallToOtherClientNumbers)   : false;
        d.IsCheckCallFromOther          = checkType(p.IsCheckCallFromOther)             ?   Boolean(p.IsCheckCallFromOther)         : false;
        d.AllowPrefix                   = p.AllowPrefix                                 ?   p.AllowPrefix.filter(x => x).join()     : null;
        d.destination                   = p.destination                                 ?   p.destination                           : null;
        d.destdata                      = p.destdata                                    ?   p.destdata                              : null;
        d.destdata2                     = p.destdata2                                   ?   p.destdata2                             : null;
        d.target                        = p.target                                      ?   p.target                                : null;
        d.roIDs                         = p.roIDs                                        ?   p.roIDs.filter(x => x).join()            : null;
        d.isFirstClient                 = checkType(p.isFirstClient)                    ?   Boolean(p.isFirstClient)                : false;
        d.limitChecker                  = p.limitChecker                                ?   p.limitChecker                           : null;
        d.limitStatuses                 = p.limitStatuses                               ?   p.limitStatuses.filter(x => x).join()            : null;
        d.isActive                      = checkType(p.isActive)                         ?   Boolean(p.isActive)                     : false;
    }
}

const model = new astScenarioModel();
module.exports = model;

//JDI model from WEB
// class astRouteIncModel extends BaseModelNew {
//     constructor(p) {
//         p = p ? p : {};
//         super(p);
//         this.p = p;
//         this.rtID           = p.rtID        ? p.rtID    : null ;
//         this.Aid            = p.Aid         ? p.Aid     : null ;
//         this.trID           = p.trID        ? p.trID    : null ;
//         this.DID            = p.DID         ? p.DID     : null ;
//         this.exten          = p.exten       ? p.exten   : null ;
//         this.context        = p.context     ? p.context : null ;
//         this.Action         = p.Action      ? p.Action  : null ;
//         this.isActive       = p.isActive    ? p.isActive: null ;
//     }

//     get(){
//         super.get();
//         let p = this.p; delete this.p;
//         return this;
//     }

//     postFind(){
//         super.postFind();
//         let p = this.p; delete this.p;
//         return this;
//     }

//     put(){
//         super.put();
//         let p = this.p; delete this.p;
//         return this;
//     }

//     post(){
//         super.post();
//         let p = this.p; delete this.p;
//         delete this.rtID;
//         this.context        = p.context     ? p.context : `office` ;
//         this.isActive       = p.isActive    ? p.isActive: true ;
//         return this;
//     }
// }