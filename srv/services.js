const cds = require('@sap/cds')

class AdminService extends cds.ApplicationService {
  init() {
    this.before("CREATE", "GalacticSpacefarer", (req) => this.valdiate(req));

    return super.init();
  }

  valdiate(req) {
    if (JSON.stringify(req.data).includes("dark element")){
      return req.reject(`Can't create new spacefarer`)
    }
  }
}
module.exports = { AdminService }