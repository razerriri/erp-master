<!-- TIME IN -->
<div class="modal fade in" id=timein_confirm tabindex="-1" role="dialog" aria-hidden="false" style="display:none; overflow-y:hidden">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
		<form:form action="user-time-in" id="timeInForm" method="post" modelAttribute="userAttendance">
        <fieldset>  
			<div class="modal-header">
				<h4 class="modal-title">Time IN Successful</h4>
			</div>
			<div class="modal-body">
				<input type="text" id="emp_user" name="emp_user" style="display:none"/>
				<input type="text" id="emp_pass" name="emp_pass" style="display:none"/>
                <p>You have successfully Time in at
                	<script type="text/javascript">
                    var currentTime = new Date();
                    var hours = currentTime.getHours();
                    var minutes = currentTime.getMinutes();
                    if (minutes < 10){
                        minutes = "0" + minutes
                    }
           
                    if(hours > 11){                
                        a=12;
                        hours = hours-a;
                        document.write(hours + ":" + minutes + " " + "PM" );
                    } 
                    else if (hours < 11){
                        if(hours==0){
                            hours=12;                                    
                            document.write(hours + ":" + minutes + " " + "AM" );                                                                          
                        }
                        else{                                    
                            document.write(hours + ":" + minutes + " " + "AM" );                                     
                        }
                    }
                    </script>
                </p>
			</div>		
			<div class="modal-footer">
				<button type="submit" class="btn btn-default">OK</button>
			</div>
		</fieldset>
		</form:form>
		</div>
	</div>
</div>

<!-- TIME OUT -->
<div class="modal fade in" id=timeout_confirm tabindex="-1" role="dialog" aria-hidden="false" style="display:none; overflow-y:hidden">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<form:form action="user-time-out" id="timeOutForm" method="post" modelAttribute="userAttendance">
		        <fieldset>  
					<div class="modal-header">
						<h4 class="modal-title">Time OUT Successful</h4>
					</div>
					<div class="modal-body">     
						 <input type="text" id="emp_user" name="emp_user" style="display:none"/>
						 <input type="text" id="emp_pass" name="emp_pass" style="display:none"/> 
	                     <p>You have successfully Time out at
	                     <script type="text/javascript">
	                         var currentTime = new Date();
	                         var hours = currentTime.getHours();
	                         var minutes = currentTime.getMinutes();
	                         if (minutes < 10){
	                             minutes = "0" + minutes
	                         }
	                                   
	                         if(hours > 11){
	                             a=12;
	                             hours = hours-a;
	                             document.write(hours + ":" + minutes + " " + "PM" );
	                         } 
	                         else if (hours < 11){
	                             if(hours==0){
	                                 hours=12;
	                                 document.write(hours + ":" + minutes + " " + "AM" );  
	                             }
	                             else{
	                                 document.write(hours + ":" + minutes + " " + "AM" ); 
	                             }          
	                         }	                         
	                         </script>
	                     </p>
					</div>
					
					<div class="modal-footer">
						<button type="submit" class="btn btn-default">OK</button>
					</div>
				</fieldset>
			</form:form>
		</div>
	</div>
</div>  