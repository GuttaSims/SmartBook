 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="form-container">
        <input type="email" id="loginEmail" class="input-field" placeholder="Email" required>
        <input type="password" id="loginPassword" class="input-field" placeholder="Password" required>
        <button id="loginBtn" class="submit-btn">Login</button>
    </div>

    <script type="module">
        import { getAuth, signInWithEmailAndPassword } from "https://www.gstatic.com/firebasejs/9.16.0/firebase-auth.js";
        import { initializeApp } from "https://www.gstatic.com/firebasejs/9.16.0/firebase-app.js";

        const firebaseConfig = {
            apiKey: "AIzaSyAdH4k_ECww3nz9g9m32GFdBVkddabBVoc",
            authDomain: "smartbook-2215.firebaseapp.com",
            projectId: "smartbook-2215",
            storageBucket: "smartbook-2215.appspot.com",
            messagingSenderId: "999113949935",
            appId: "1:999113949935:web:97d7d78e7ccf3f1b68911a"
        };

        const app = initializeApp(firebaseConfig);
        const auth = getAuth(app);

        document.getElementById('loginBtn').addEventListener('click', async () => {
            const email = document.getElementById('loginEmail').value;
            const password = document.getElementById('loginPassword').value;

            try {
                const userCredential = await signInWithEmailAndPassword(auth, email, password);
                window.location.href = 'index.html';
            } catch (error) {
                console.error('Error logging in:', error.message);
                alert(error.message);
            }
        });
    </script>
</body>
</html>
