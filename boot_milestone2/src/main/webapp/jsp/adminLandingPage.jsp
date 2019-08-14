<!DOCTYPE html>
<html>
    <head>
        <title>VSE | Admin</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="adminLaandingPage.css">
        <script src="adminLandingPage.js"></script>
    </head>
    <body>
        <div>
            <div class="header">
                <nav class="navbar navbar-inverse">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="userLandingPage.html" style="color:rgb(10, 153, 197);">Venky Stock Exchange</a>
                        </div>
                        <ul class="nav navbar-nav">
                            <li id="importDataBtn" data-toggle="modal" data-target="#uploadExcel"><a href="#">Import Data</a></li>
                            <li id="manageCompanyBtn" data-toggle="modal" data-target="#manageCompany"><a href="#">Manage Company</a></li>
                            <li><a href="#">Manage Exchange</a></li>
                            <li><a href="#">Update IPO Details</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>


        <!--Modal-->
        <div>
            <div id="uploadExcel" class="modal fade modalElement" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" style="color: rgb(10, 153, 197);">Upload Excel File</h4>
                    </div>
                    <div class="modal-body" style="margin-left: 18%;">
                        <div class="upload-btn-wrapper" style="margin-top: 10%">
                            <button class="btn blue">Click  here to upload</button>
                            <input type="file" id="myFile" accept=".csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel"/>
                        </div>
                        <div class="upload-btn-wrapper">
                            <button class="btn blue-solid" data-toggle="modal" data-target="#summary" data-dismiss="modal">Submit</button>
                        </div>
                        <div style="margin-top: 5%; margin-left: 10%;">
                            <p><a href="sample.xlsx" download="Sample Excel File">Click here to download sample excel file.</a></p>
                        </div>
                    </div>
                    </div>

                </div>
            </div>
        </div>
        <div>
                <div id="summary" class="modal fade modalElement" role="dialog">
                    <div class="modal-dialog">
    
                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title" style="color: rgba(22, 156, 44, 0.486);">Summary of Upload</h4>
                            </div>
                            <div class="modal-body" style="margin-left: 18%;">
                                <div style="margin-left:25%;">
                                    <img src="img/success.jpg" alt="Success" height="100px" width="100px"><h2 style="margin-left: -30%; margin-top: 5%;color: rgba(22, 156, 44, 0.486);">Successfully Submitted</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

           
            <!--MAnage COmpany-->

            <div>
                    <div id="manageCompany" class="modal fade modalElement" role="dialog" style="margin: auto;">
                        <div class="modal-dialog">
        
                            <!-- Modal content-->
                            <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title" style="color: rgb(10, 153, 197);">List of Companies</h4>
                            </div>
                            <div class="modal-body" style="margin-left: 8%">
                                <div class="upload-btn-wrapper" style="margin-top: 10%">

                                        <div>    
                                                <table class="table">
                                                  <tbody>
                                                    <tr>
                                                      <td><img src="img/cognizant.png" alt="Logo" height="40px" width="40px"></td>  
                                                      <td>Cognizant</td>
                                                      <td>BSE, NSE</td>
                                                      <td>info.stock@cognizant.com</td>
                                                      <td><button class="btns blue-solid" data-toggle="modal" data-dismiss="modal">Edit</button></td>
                                                    </tr>
                                                    <tr>
                                                      <td><img src="img/infosys.jpg" alt="Logo" height="40px" width="40px"></td>   
                                                      <td>Infosys</td>
                                                      <td>BSE</td>
                                                      <td>info.stock@infosys.com</td>
                                                      <td><button class="btns blue-solid" data-toggle="modal" data-dismiss="modal">Edit</button></td>
                                                    </tr>
                                                    <tr>
                                                      <td><img src="img/tcs.png" alt="Logo" height="40px" width="40px"></td>  
                                                      <td>TCS</td>
                                                      <td>NSE</td>
                                                      <td>info.stock@tcs.com</td>
                                                      <td><button class="btns blue-solid" data-toggle="modal" data-dismiss="modal">Edit</button></td>
                                                    </tr>
                                                    <tr >
                                                        <td colspan="5">
                                                        <div class="upload-btn-wrapper">
                                                            <button class="btns blue-solid" data-toggle="modal"  data-target="#createCompany" data-target="#summary" data-dismiss="modal">Add Company</button>
                                                        </div>
                                                        </td>
                                                    </tr>
                                                            
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


                 <!--Create COmpany-->

                <div>
                    <div id="createCompany" class="modal fade modalElement" role="dialog" style="margin: auto;">
                        <div class="modal-dialog">
        
                            <!-- Modal content-->
                            <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title" style="color: rgb(10, 153, 197);">Create New Company</h4>
                            </div>
                            <div class="modal-body" style="margin-left: 8%">
                                <div class="upload-btn-wrapper" style="margin-top: 10%">

                                        <div>    
                                                <table class="table">
                                                  <tbody>
                                                    <tr>
                                                      <td>Company Name : </td>  
                                                      <td><input type="text"></td>
                                                    </tr>
                                                    <tr>
                                                      <td>CEO Name & Board Members : </td>  
                                                      <td><input type="text"></td>
                                                    </tr>
                                                    <tr>
                                                      <td>Turn Over : </td>  
                                                      <td><input type="text"></td>
                                                    </tr>
                                                    <tr>
                                                      <td>Brief Description : </td>  
                                                      <td><input type="text"></td>
                                                    </tr>
                                                    <tr>
                                                      <td>IPO Date : </td>  
                                                      <td><input type="date"></td>
                                                    </tr>
                                                    <tr >
                                                        <td colspan="2">
                                                        <div class="upload-btn-wrapper">
                                                            <button class="btns blue-solid" data-toggle="modal" data-target="#summary" data-dismiss="modal">Save</button>
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
    </body>
</html>
