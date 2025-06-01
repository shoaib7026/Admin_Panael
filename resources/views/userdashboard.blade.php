<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            height: 100vh;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-family: 'Segoe UI', sans-serif;
        }

        .card {
            background-color: rgba(255, 255, 255, 0.1);
            border: none;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
            text-align: center;
            max-width: 500px;
        }

        h2 {
            font-weight: bold;
        }

        .btn-logout {
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="card">
    <h2>Welcome, {{ Auth::user()->name }}</h2>
    <p>You are now logged in as a regular user.</p>
</div>

</body>
</html>
