<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Login</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--===============================================================================================-->
<link rel="icon" type="image/png"
   href="../resources2/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="../resources2/vendor/bootstrap/css/bootstrap.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="../resources2/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="../resources2/fonts/iconic/css/material-design-iconic-font.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="../resources2/vendor/animate/animate.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="../resources2/vendor/css-hamburgers/hamburgers.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="../resources2/vendor/animsition/css/animsition.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="../resources2/vendor/select2/select2.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="../resources2/vendor/daterangepicker/daterangepicker.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="../resources2/css/util.css" />
<link rel="stylesheet" type="text/css" href="../resources2/css/main.css" />
<!--===============================================================================================-->
<link
   href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap"
   rel="stylesheet" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Roboto+Mono&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">

<style>
#flexbox {
display: flex;
justify-content: center;
margin-bottom: 5px;
}
.maintext {
   font-family: 'Roboto Mono', monospace;
   font-size: 60px;
   color: #ffffff;
   text-shadow: 2px 2px 5px #ae9fff;
   animation: fadeout 5s ease-in-out;
}

@keyframes fadeout {
from { opacity:0;   
}
to {
   opacity: 1;
}
}
</style>
</head>

<body>
   <div class="limiter">
      <div class="container-login100" style="background-color: #f4f3ef">
         <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54 shadowbox">
            <form class="login100-form validate-form"
               action="/The/TheLoginProc.do" method="post">
               <div id="flexbox">
               <span class="maintext"> Reminder </span>
               </div>

               <div class="wrap-input100 validate-input m-b-23"
                  data-validate="Username is reauired">
                  <span class="label-input100">ID</span> <input
                     class="input100" type="text" name="id"
                     placeholder="Type your ID" /> <span class="focus-input100"
                     data-symbol="&#xf206;"></span>
               </div>

               <div class="wrap-input100 validate-input"
                  data-validate="Password is required">
                  <span class="label-input100">Password</span> <input
                     class="input100" type="password" name="pwd"
                     placeholder="Type your password" /> <span class="focus-input100"
                     data-symbol="&#xf190;"></span>
               </div>

               <div class="text-right">
                  <a href="#"> Forgot password? </a>
               </div>

               <div class="container-login100-form-btn">
                  <div class="wrap-login100-form-btn">
                     <div class="login100-form-bgbtn"></div>
                     <!-- <button type="submit" class="login100-form-btn btn">Login</button> -->
                     <!-- <button type="button" id="notification" onclick="showNotification();">notification</button> -->
                     <button type="button" class="login100-form-btn btn" onclick="calculate()">notification</button>
                  </div>
               </div>
               <div class="flex-col-c p-t-155" style="padding-top: 15px">
               	<img alt="kakao_login" src="/resources/assets/img/kakao_login_large_wide.png" width="370px" height="53px" class="wrap-login100-form-btn" id="kakao_login">
               </div>
               <div class="flex-col-c p-t-155" style="padding-top: 30px">
                  <a href="/The/TheSignUp.do" class="txt2"> Sign Up </a>
               </div>
            </form>
         </div>
      </div>
   </div>

   <div id="dropDownSelect1"></div>

   <!--===============================================================================================-->
   <script src="../resources2/vendor/jquery/jquery-3.2.1.min.js"></script>
   <!--===============================================================================================-->
   <script src="../resources2/vendor/animsition/js/animsition.min.js"></script>
   <!--===============================================================================================-->
   <script src="../resources2/vendor/bootstrap/js/popper.js"></script>
   <script src="../resources2/vendor/bootstrap/js/bootstrap.min.js"></script>
   <!--===============================================================================================-->
   <script src="../resources2/vendor/select2/select2.min.js"></script>
   <!--===============================================================================================-->
   <script src="../resources2/vendor/daterangepicker/moment.min.js"></script>
   <script src="../resources2/vendor/daterangepicker/daterangepicker.js"></script>
   <!--===============================================================================================-->
   <script src="../resources2/vendor/countdowntime/countdowntime.js"></script>
   <!--===============================================================================================-->
   <script src="../resources2/js/main.js"></script>
   
   <!-- The core Firebase JS SDK is always required and must be listed first -->
	<script src="https://www.gstatic.com/firebasejs/8.4.2/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
	<script src="https://www.gstatic.com/firebasejs/8.4.2/firebase-analytics.js"></script>
	<script src="https://www.gstatic.com/firebasejs/5.10.1/firebase-messaging.js"></script>

<script>
  // Your web app's Firebase configuration
  // For Firebase JS SDK v7.20.0 and later, measurementId is optional
  var firebaseConfig = {
    apiKey: "AIzaSyDt5YfxpdI-EhkkUyXzQnCGrLG0OIJQsvw",
    authDomain: "reminderprj-5fb57.firebaseapp.com",
    projectId: "reminderprj-5fb57",
    storageBucket: "reminderprj-5fb57.appspot.com",
    messagingSenderId: "923825148942",
    appId: "1:923825148942:web:b9c6bde41dd87a7109985f",
    measurementId: "G-KDJ9707KW2"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
</script>
</body>
	<script>

		$("#kakao_login").on('click', function() {
			if ($(this).hasClass("toggled")) {
				$(this).removeClass("toggled");
				$("html").first().removeClass("nav-open");
			} else {
				$(this).addClass("toggled");
				$("html").first().addClass("nav-open");

			}

		})

		
		window.onload = function () {
            if (window.Notification) {
                Notification.requestPermission();
            }
        }
 
        function calculate() {
            setTimeout(function () {
                notify();
            }, 3000);
        }
 
        function notify() {
            if (Notification.permission !== 'granted') {
                alert('notification is disabled');
            }
            else {
                var notification = new Notification('Notification test title!', {
                    icon: '',
                    body: 'Notification test message!',
                });
 
                notification.onclick = function () {
                    window.open('https://www.naver.com');
                };
            }
        }
        const messaging = firebase.messaging();

    	messaging.usePublicVapidKey(applicationServerPublicKey);

    	

    	Notification.requestPermission().then((permission) => {

    		if (permission === 'granted') {

    			console.log('Notification permission granted.');

    			// TODO(developer): Retrieve an Instance ID token for use with FCM.

    			messaging.getToken().then((currentToken) => {				

    				if (currentToken) {

    					var data = { 

    							'token' : currentToken

    							};

    					

    					$.ajax({

    						url: '/insertPushToken.do',

    						type: 'POST',

    						data: data,

    						success: function(data) {

    							console.log('RESULT', data);

    						},

    						error: function(err) {

    							console.log('ERROR', err);

    						}

    					});

    				} else {

    					console.log('No Instance ID token available. Request permission to generate one.');

    				}

    			}).catch((err) => {

    				console.log('An error occurred while retrieving token. ', err);

    				showToken('Error retrieving Instance ID token. ', err);

    				setTokenSentToServer(false);

    			});

    		} 

    		else {

    			console.log('Unable to get permission to notify.');

    		}

    	});


/*		function defulatShowNotification(){
	    	showNotification('Vibration Sample', 'test!', 'http://www.naver.com', '../images/touch/chrome-touch-icon-192x192.png');
	    }
		navigator.serviceWorker.register('/service-worker.js');
	    function showNotification(title, message, url, icon) {
	      Notification.requestPermission(function(result) {
	        if (result === 'granted') {
	          navigator.serviceWorker.ready.then(function(registration) {
	            registration.showNotification(title, {
	              body: message,
	              icon: icon,
	              vibrate: [200, 100, 200, 100, 200, 100, 200],
	              tag: 'vibration-sample',
	              data : url
	            });
	          });
	        }
	      });
	    };

		self.addEventListener('notificationclick', function(event) { //Notification을 클릭할 떄 이벤트를 정의합니다.
			event.notification.close(); // Notification을 닫습니다.
			event.waitUntil(clients.matchAll({ //같은 주소의 페이지가 열려있는 경우 focus
				type : 'window'
			}).then(function(clientList) {
				for (var i = 0; i < clientList.length; i++) {
					var client = clientList[i];
					if (client.url === '/' && 'focus' in client) {
						return client.focus();
					}
				}
				if (clients.openWindow) { //같은 주소가 아닌 경우 새창으로 
					return clients.openWindow(event.notification.data);
				}
			}));
		}); */
	</script>
</html>