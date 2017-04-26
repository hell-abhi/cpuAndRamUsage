<!doctype html>
    <html lang="en">
    <head>
      <meta charset="UTF-8">
      <title>database connections</title>
    </head>
    <body>
      <?php
     $db_host = 'localhost' ;
	$db_user = 'root' ;
	$db_password = 'priya6355' ;
	$db_name = 'ps_cpu' ;
	$connection = new mysqli($db_host,$db_user,$db_password,$db_name) ;
	if($connection->connect_error)
	{
		die("Connection failed: ".$connection->connect_error);
	}
	

      //execute the SQL query and return records
      $sql = "SELECT * FROM status";
      $result = $connection->query($sql) ;
	  //$result = mysqli_fetch_array($sql) ;
      ?>
      <table border="2" style= "background-color: #84ed86; color: #761a9b; margin: 0 auto;" >
      <thead>
        <tr>
          <th>cpu</th>
          <th>ram</th>
        </tr>
      </thead>
      <tbody>
        <?php
        if($result->num_rows>0){
          while($row = $result->fetch_assoc()){
            echo
            "<tr>
              <td>".$row["cpu"]."</td>".
              "<td>".$row["ram"]."</td>".
            "</tr>";
            
          }}
          else
          echo "0 results";
        ?>
      </tbody>
    </table>
     <?php mysql_close($connector); ?>
    </body>
    </html>
