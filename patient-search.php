<html>
<head>
    <!-- Required meta tags -->
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>
    <title>Search</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity='sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh' crossorigin='anonymous'>
  </head>

  <body>
  <div class="jumbotron" style="background:url('images/4.jpg')no-repeat; background-size: cover; height: 300px;"></div>
    <div class='container'>
        <div class='card'>
            <div class='card-body' style='background-color:rgb(122, 21, 255) ; padding: 5px; font-size: 26px;'>
                <div class='row'>
                    <div class='col-md-2'>
                        <a href='admin-panel.html' class='btn btn-light'>Go Back</a>
                    </div>
                    <div class='col-md-3'><h3>Patient-Details</h3></div> 
                    <div class='col-md-7'>
                        
                    </div>
                </div>
            </div>
            <table class='table table-hover'>
                <thead>
                  <tr>
                    <th scope='col>First Name</th>
                    <th scope='col'>Last Name</th>
                    <th scope='col'>Email</th>
                    <th scope='col'>Contact</th>
                    <th scope='col'>Doctor Appoined</th>
                  </tr>
                </thead>
                <tbody>
<?php
include('func.php');
if(isset($_POST['patient_search_submit'])){
    $contact = $_POST['search'];
    $query = "select * from doctorapp where contact='$contact' ";
    $result = mysqli_query($con, $query);

    while($row = mysqli_fetch_array($result)){
        $fname = $row['fname'];
        $lname = $row['lname'];
        $email = $row['email'];
        $contact = $row['contact'];
        $docapp = $row['docapp'];
        echo "<tr>
        <td>$fname</td>
        <td>$lname</td>
        <td>$email</td>
        <td>$contact</td>
        <td>$docapp</td>
      </tr>";
    }

    echo "</tbody></table></div></div></div>";
}

?>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</body>
</html>