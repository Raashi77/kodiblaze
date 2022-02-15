import { apiUrl } from '../../config';

async function RestLogin(credentials) {
  const data = await fetch(apiUrl+'login.php', {
    method: 'POST',
    headers: {
      Accept: 'application/json',
      'Content-Type': 'application/json',
    },
    body: JSON.stringify(credentials),
  }).then((res) => res.json());
  return data;
}

async function ForgotPassword(credentials) {
  const data = await fetch(apiUrl + '/auth/updatePassword', {
    method: 'POST',
    headers: {
      Accept: 'application/json',
      'Content-Type': 'application/json',
    },
    body: JSON.stringify(credentials),
  }).then((res) => res.json());
  return data;
  
}
//for verifying accessToken of user 
async function decryptJWT(accessToken) {

  console.log(accessToken);
  const data = await fetch(apiUrl + 'login.php', {
    method: 'POST',
    headers: {
      Accept: 'application/json',
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({accessToken,decryptJWT:true})
  }).then((res) => res.json());
  return data; 
}

//sends otp for reseting passwords
async function sendOTP(email) {
  var details = {
      "email":email
    };

    var formBody = [];
    for (var property in details) {
      var encodedKey = encodeURIComponent(property);
      var encodedValue = encodeURIComponent(details[property]);
      formBody.push(encodedKey + "=" + encodedValue);
    }
    formBody = formBody.join("&");

  const data = await fetch(apiUrl + '/auth/sendOTP', {
    method: 'POST',
    headers: {
      Accept: 'application/json',
      'Content-Type': 'application/x-www-form-urlencoded',
    },
    body: formBody,
  }).then((res) => res.json());
  return data;
  
}

//function for reseting passwords using token
async function changePassword(userID, token, newPassword) {
  var details = {
      "newPassword":newPassword
    };

    var formBody = [];
    for (var property in details) {
      var encodedKey = encodeURIComponent(property);
      var encodedValue = encodeURIComponent(details[property]);
      formBody.push(encodedKey + "=" + encodedValue);
    }
    formBody = formBody.join("&");

  const data =  await fetch(apiUrl + '/auth/password-reset/'+userID+"/"+token, {
    method: 'POST',
    headers: {
      Accept: 'application/json',
      'Content-Type': 'application/x-www-form-urlencoded',
    },
    body: formBody,
  }).then((res) => res.json());
  return data;
  
}


export { RestLogin,decryptJWT, ForgotPassword,sendOTP,changePassword};