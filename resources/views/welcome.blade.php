
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Touchless Check-In</title>
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,600&display=swap" rel="stylesheet" />
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Styles -->
    <style>
        body {
            color: white;
            font-size: 1.25rem; /* Increased text size */
        }
        .button-style {
            background-image: linear-gradient(to left, #007BFF, #004085, #007BFF); /* Corrected gradient for buttons */
            color: white;
            border: none;
            padding: 12px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 18px; /* Increased button text size */
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 12px;
        }
        .qr-section {
            background-image: linear-gradient(to left, #007BFF, #004085); /* Reverse gradient for QR section */
            text-align: center;
            padding: 20px;
            flex: 0 0 300px; /* Fixed width for QR section */
            border-right: 2px solid #FFFFFF; /* White border line between sections */
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .welcome-section {
            background-image: linear-gradient(to top, #007BFF, #004085); /* Vertical gradient for the welcome section */
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 20px;
            font-size: 30px; /* Increased size for welcome text */
        }
        .container-fluid {
            display: flex;
            min-height: 100vh;
            padding: 0;
            margin: 0;
            overflow: hidden;
        }
        .img-fluid {
            max-width: 90%; /* Control the size of QR code image */
            height: auto;
        }
        .mobile-qr {
            margin-bottom: 0; /* Remove space below the image to bring it closer to the text */
            max-width: 120%; /* Increase the size if needed */
        }
        .button-container {
            display: flex;
            gap: 10px;
        }
        .touchless-check-in {
            font-weight: bold;
            text-transform: uppercase;
            margin-bottom: 10px; /* Reduced space for closeness */
        }
        .logo {
            max-width: 20%; /* Adjust this to scale the logo size */
            height: auto; /* Maintains the aspect ratio */
            /* Additional styles to ensure it takes effect */
            max-width: 40vw; /* 60% of the viewport width, adjust as needed */
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="qr-section">
            <img src="{{ asset('mobileQR.png') }}" alt="Mobile QR" class="img-fluid mobile-qr">
            <p class="touchless-check-in">TOUCHLESS CHECK-IN<br>Use your smartphone to scan QR code</p>
            <img src="{{ asset('qr2.png') }}" alt="QR Code" class="img-fluid">
        </div>
        <div class="welcome-section">
            <img src="{{ asset('logo2.png') }}" alt="College Logo" class="logo mb-4">
            <h1>Welcome!</h1>
            <p>Please take a moment to sign in or out below</p>
            <div class="button-container">
                <button class="button-style" data-bs-toggle="modal" data-bs-target="#privacyModal">GET STARTED</button>
            </div>
        </div>
    </div>

<!-- Privacy Modal -->
<div class="modal fade" id="privacyModal" tabindex="-1" aria-labelledby="privacyModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="privacyModalLabel" style="color: black;">Data Privacy Notice</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div style="color: black;">
                    <h6>Personal Information</h6>
                    <p>We collect the following personal information from you when you manually or electronically answer questions from our online application and feedback forms:</p>
                    <ol>
                        <li><strong>Online Application</strong></li>
                        <ul>
                            <li>Personal Data
                                <ul>
                                    <li>Full Name</li>
                                    <li>Gender</li>
                                    <li>Civil Status</li>
                                    <li>Date of Birth</li>
                                    <li>Religion</li>
                                    <li>Photo</li>
                                    <li>Place of Birth</li>
                                    <li>City/Town</li>
                                    <li>Province/Region/State</li>
                                    <li>Country</li>
                                    <li>Country of Citizenship</li>
                                </ul>
                            </li>
                            <li>Contact Details
                                <ul>
                                    <li>Address</li>
                                    <li>Home Phone Number</li>
                                    <li>Email Address</li>
                                </ul>
                            </li>
                            <li>Intended Course at APC</li>
                            <li>Educational Background</li>
                            <li>Family Background</li>
                            <li>Statement of Integrity</li>
                            <li>Illnesses or diseases</li>
                            <li>Willingness to submit to random drug-testing</li>
                        </ul>
                        <li><strong>Feedback from Parents</strong></li>
                        <ul>
                            <li>Parent’s Name</li>
                            <li>Email</li>
                            <li>Concern</li>
                            <li>Message</li>
                        </ul>
                        <li><strong>General Inquiries</strong></li>
                        <ul>
                            <li>Name</li>
                            <li>Email</li>
                            <li>Subject</li>
                            <li>Message</li>
                        </ul>
                    </ol>
                    <p><strong>Use</strong><br>
                    The personal information that you provide will solely be used for documentation purposes within Asia Pacific College (APC). It will not be disclosed to any third party. The information will be used by the school to properly assist the students in their application. Moreover, feedback, questions, and concerns will be redirected to the concerned APC representative so that these can be properly addressed.</p>
                </div>
                <hr>
                <div style="color: black;">
                    <h6>APC Data Privacy Policy</h6>
                    <p><strong>SCOPE</strong></p>
                    <p>This document is composed of Asia Pacific College’s (APC) policies and procedures on proper collection, processing, and management of employee and student personal information in accordance with Republic Act 10173, or the Data Privacy Act (DPA) of 2012.</p>
                    
                    <p><strong>INTRODUCTION</strong></p>
                    <p>The Data Privacy Act (DPA) of 2012, or Republic Act 10173, is an act that aims to protect an individual’s personal information in information and communications systems of the government and private sector.</p>
                    
                    <!-- More content here ... -->

                    <p><strong>TYPES OF INFORMATION COLLECTED</strong></p>
                    <p>APC collects and maintains student and employee “personal data” as part of its records management process. “Personal data” is “the term used when referring to personal information, sensitive information, and privileged information,” (IRR DPA of 2012).</p>
                    
                    <!-- More content here ... -->
                    
                    <p><strong>PROCESSING OF PERSONAL DATA</strong></p>
                    <p>APC adheres to the general principles of transparency, legitimate purpose, and proportionality in the processing of employee personal data and information (Rule IV. Sec. 18, IRR, DPA of 2012).</p>
                    
                    <!-- More content here ... -->
                    
                    <p><strong>RECORDS KEEPING and RETENTION</strong></p>
                    <p>1. IRR of the DPA of 2012, Rule IV. Data Privacy Principles, Sec. 19: “Personal Data shall not be retained longer than necessary.</p>
                    <!-- More content here ... -->
                    
                    <p><strong>DISCLOSURE OF DATA AND INFORMATION</strong></p>
                    <p>1. IRR of the DPA of 2012, Rule IV. Data Privacy Principles, Sec. 20: “General principles for Data Sharing. Further Processing of Personal Data collected from a party other than the Data Subject shall be allowed under any of the conditions stipulated in DPA of 2012.</p>
                    <!-- More content here ... -->
                    
                    <p><strong>QUESTIONS OR CONCERNS</strong></p>
                    <p>For questions or concerns on the policies and procedures stipulated in this privacy policy, students and other parties can contact the APC Privacy Officer @lorenar@apc.edu.ph</p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="acceptPrivacy()">Accept</button>
            </div>
        </div>
    </div>
</div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function acceptPrivacy() {
            const url = new URL(window.location);
            if (url.pathname === '/register') {
                window.location.href = '{{ route('register') }}';
            } else if (url.pathname === '/login') {
                window.location.href = '{{ route('login') }}';
            }
        }
        document.querySelectorAll('.button-style').forEach(button => {
            button.addEventListener('click', function() {
                const acceptButton = document.querySelector('#privacyModal .btn-primary');
                if (this.textContent.includes('GET STARTED')) {
                    acceptButton.onclick = function() { window.location.href = '{{ route('register') }}'; };
                } else {
                    acceptButton.onclick = function() { window.location.href = '{{ route('login') }}'; };
                }
            });
        });
    </script>
</body>
</html>
