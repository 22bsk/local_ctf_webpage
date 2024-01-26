<!DOCTYPE html>
<html>
<head>
    <title>Trivia CTF Challenge 8</title>
    <style>
        body {
            font-family: 'Times New Roman', serif;
            text-align: center;
            background-image: url("../../images/dash.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }

        .dashboard-box {
            position: absolute;
            top: 10px;
            left: 10px;
            background-color: #4CAF50;
            color: #fff;
            padding: 5px 10px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
        }

        .question {
            font-size: 24px;
            color: #333;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .answer {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .hint {
            font-size: 16px;
            color: #FFD700; /* Cream color for hint text */
            cursor: pointer;
        }

        .hint-text {
            display: none;
        }

        .submit-button {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }

        .submit-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <a class="dashboard-box" href="../../dashboard.php">Dashboard</a>
    <div class="container">
        <div class="question">CTF Trivia Challenge 8</div>
        <p class="question-text">What is the capital of France?</p>
        <p class="hint" id="hint">Click for Hint</p>
        <p class="hint-text" id="hint-text">Hint: Known as the "City of Love."</p>

        <form action="" method="POST">
           
        <a href="../../flagsubmit.php" <button class="submit-button" type="submit">Go To Submit</button></a>
        </form>
        <p class="answer-message" id="answer-message"></p>

        <p>Good luck finding the flag!</p>
    </div>

    <script>
        // Add an event listener to the hint block to display the hint text
        document.getElementById("hint").addEventListener("click", function() {
            document.getElementById("hint-text").style.display = "block";
        });

        // Initialize a variable to track whether the answer is correct
        let isCorrect = false;

        // Check the answer when the form is submitted
        if (document.querySelector('form')) {
            document.querySelector('form').addEventListener('submit', function(e) {
                e.preventDefault(); // Prevent the form from submitting

                // Get the user's answer from the form
                const userAnswer = document.querySelector('input[name="answer"]').value;

                // Define the correct answer (case-insensitive)
                const correctAnswer = "paris"; // The correct answer is "Paris" for the capital of France

                // Check if the user's answer is correct
                if (userAnswer.toLowerCase() === correctAnswer) {
                    isCorrect = true;
                }

                // Display the appropriate message based on the answer status
                const answerMessage = document.getElementById("answer-message");
                if (isCorrect) {
                    answerMessage.innerHTML = "Congratulations! You've found the flag: CTF{Paris_Flag_123}";
                } else {
                    answerMessage.innerHTML = "Sorry, your answer is incorrect. Please try again.";
                }
            });
        }
    </script>
</body>
</html>