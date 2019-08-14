
<!DOCTYPE html>
<html>
    <head>
        <title>VSE | Landing</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/adminLaandingPage.css">
        <script src="adminLandingPage.js"></script>
    </head>
    <body class="bg">
        <div>
            <div class="header">
                <nav class="navbar navbar-inverse">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="adminLandingPage.html" style="color:rgb(10, 153, 197);">Venky Stock Exchange</a>
                        </div>
                        <ul class="nav navbar-nav">
                            <li id="ipoBtn" data-toggle="modal"><a href="#">IPOs</a></li>
                            <li id="compareCompanyBtn" data-toggle="modal" data-target="#compareCompany"><a href="#">Compare Company</a></li>
                            <li><a href="#">Compare Sectors</a></li>
                            <li><a href="#">Others</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>


        <!--Modal-->


                 <!--Compare COmpany-->

                <div>
                    <div id="compareCompany" class="modal fade modalElement" role="dialog" style="margin: auto;">
                        <div class="modal-dialog">
        
                            <!-- Modal content-->
                            <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title" style="color: rgb(10, 153, 197);">Comparison Chart</h4>
                            </div>
                            <div class="modal-body" style="margin-left: 8%">
                                <div class="upload-btn-wrapper" style="margin-top: 10%">

                                        <div>    
                                                <table class="table">
                                                  <tbody>
                                                    <tr>
                                                      <td>Select Company/Sector : </td>  
                                                        <td><select>
                                                            <option>Select</option>
                                                            <option>IT</option>
                                                            <option>Banking</option>
                                                            <option>Food</option>
                                                            <option>Education</option>
                                                          </select>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                      <td>Select Stock Exchange : </td>  
                                                      <td><select>
                                                            <option>Select</option>
                                                            <option>BSE</option>
                                                            <option>NSE</option>
                                                            <option>VSE</option>
                                                          </select>
                                                        </td>
                                                    <tr>
                                                      <td>Comapny Name : </td>  
                                                      <td><input type="text"></td>
                                                    </tr>
                                                    <tr>
                                                      <td>From Period : </td>  
                                                      <td><input type="date"></td>
                                                    </tr>
                                                    <tr>
                                                      <td>To Period : </td>  
                                                      <td><input type="date"></td>
                                                    </tr>
                                                    <tr>
                                                      <td>Specific Periodicity : </td>  
                                                      <td><input type="number"></td>
                                                    </tr>
                                                    <tr >
                                                        <td colspan="2">
                                                        <div class="upload-btn-wrapper">
                                                            <button class="btns blue-solid" data-toggle="modal" data-target="#generateMap" data-dismiss="modal">Generate Map</button>
                                                        </div>
                                                        </td>
                                                    </tr>
                                                  </tbody>
                                                </table>
                                        </div>
                                    
                                </div>
                                
                            </div>
                            </div>
        
                        </div>
                    </div>
                </div>

                <!--Map-->
                <div>
                        <div id="generateMap" class="modal fade modalElement" role="dialog">
                            <div class="modal-dialog">
            
                                <!-- Modal content-->
                                <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title" style="color: rgb(10, 153, 197);">Map</h4>
                                </div>
                                <div class="modal-body" style="margin-left: 10%; padding-right: 150px;">
                                    <div>
                                        <img src="img/map.png" alt="Map" height="120%" width="120%">
                                    </div>
                                </div>
                                </div>
            
                            </div>
                        </div>
                    </div>
    </body>
</html>