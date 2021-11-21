<?php  
 include 'connect.php';
 if(isset($_POST["query"]))  
 {  
      $output = '';  
      $query = "SELECT Name FROM users.Company WHERE Name LIKE '%".$_POST["query"]."%' ";  
      $result = mysqli_query($conn, $query);  
      $output = '<ul class="list-unstyled" style="background-color:red;width: 256px;margin-left: 448px; height:100px;">';  
      if(mysqli_num_rows($result) > 0)  
      {  
           while($row = mysqli_fetch_array($result))  
           {  
                $output .= '<li style="padding:12px;width: 256px;">'.$row["Name"].'</li>';  
           }  
      }  
      else  
      {  
           $output .= '<li style="padding:12px;">Country Not Found</li>';  
      }  
      $output .= '</ul>';  
      echo $output;  
 }  
 ?>