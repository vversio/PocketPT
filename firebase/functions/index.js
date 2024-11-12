const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

exports.onUserDeleted = functions.auth.user().onDelete(async (user) => {
  let firestore = admin.firestore();
  let userRef = firestore.doc("user_email_accounts/" + user.uid);
  await firestore.collection("user_email_accounts").doc(user.uid).delete();
});
