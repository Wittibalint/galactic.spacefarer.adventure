const cds = require('@sap/cds')
const email = require('./email.json');

class AdminService extends cds.ApplicationService {
  init() {
    this.before("CREATE", "GalacticSpacefarer", (req) => this.valdiate(req));
    this.after("CREATE", "GalacticSpacefarer", (req) => this.sendEmail(req));

    return super.init();
  }

  valdiate(req) {
    if (JSON.stringify(req.data).includes("dark element")){
      return req.reject(`Can't create new spacefarer`)
    }
  }

  async sendEmail(req) {
    var nodemailer = require('nodemailer');

    var transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
      user: email.user,
      pass: email.pw
      }
    });

    var mailOptions = {
      from: email.user,
      to: email.to,
      subject: 'Best luck for the Adventure',
      text: 'Do or do not there is no try'
    };

    transporter.sendMail(mailOptions, function(error, info){
      if (error) {
        console.log(error);
      } else {
        console.log('Email sent: ' + info.response);
      }
    });
  }
}
module.exports = { AdminService }