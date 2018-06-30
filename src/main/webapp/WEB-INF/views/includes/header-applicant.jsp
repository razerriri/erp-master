<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<header class="header">
   <a href="/erp/" class="logo">
   <img src="${pageContext.request.contextPath}/resources/img/logo-two.png" alt="Logo">
   </a>		
   <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <div>
         <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button" style="background-color:#2980b9;">
            <div class="responsive_nav"></div>
         </a>
      </div>
      <div class="navbar-right responsive-nav">
         <ul class="nav navbar-nav">
            <!--NAVIGATION DASHBOARD-->
            <li  class="dropdown-messages-menu" onclick="window.location.href='/erp/'">
               <a href="/erp/" class="dropdown-toggle" data-toggle="dropdown">
               <i class="livicon" data-name="home" data-size="28" data-c="#ffffff" data-hc="#ffffff" data-loop="true" title="Human Resource"></i>
               </a>
            </li>
            <li class="dropdown messages-menu">
               <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="livicon" data-name="message-flag" data-loop="true" data-color="#ffffff" data-hovercolor="#ffffff" data-size="28"></i>
               <span class="label label-success">4</span>
               </a>
               <ul class="dropdown-menu dropdown-messages pull-right">
                  <li class="dropdown-title">4 New Messages</li>
                  <li class="unread message">
                     <a href="javascript:;" class="message">
                        <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Read"><span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span></i> 
                        <img data-src="holder.js/45x45/#000:#fff" class="img-responsive message-image">
                        <div class="message-body">
                           <strong>Riot Zeast</strong>
                           <br>Hello, You there?
                           <br>
                           <small>8 minutes ago</small>
                        </div>
                     </a>
                  </li>
                  <li class="unread message">
                     <a href="javascript:;" class="message">
                        <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Read"><span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span></i> 
                        <img data-src="holder.js/45x45/#000:#fff" class="img-responsive message-image">
                        <div class="message-body">
                           <strong>John Kerry</strong>
                           <br>Can we Meet ?
                           <br>
                           <small>45 minutes ago</small>
                        </div>
                     </a>
                  </li>
                  <li class="unread message">
                     <a href="javascript:;" class="message">
                        <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Read">
                        <span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span>
                        </i>
                        <img data-src="holder.js/45x45/#000:#fff" class="img-responsive message-image">
                        <div class="message-body">
                           <strong>Jenny Kerry</strong>
                           <br>Dont forgot to call...
                           <br>
                           <small>An hour ago</small>
                        </div>
                     </a>
                  </li>
                  <li class="unread message">
                     <a href="javascript:;" class="message">
                        <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Read">
                        <span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span>
                        </i>
                        <img data-src="holder.js/45x45/#000:#fff" class="img-responsive message-image">
                        <div class="message-body">
                           <strong>Ronny</strong>
                           <br>Hey! sup Dude?
                           <br>
                           <small>3 Hours ago</small>
                        </div>
                     </a>
                  </li>
                  <li class="footer">
                     <a href="#">View all</a>
                  </li>
               </ul>
            </li>
            <li class="dropdown notifications-menu">
               <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               <i class="livicon" data-name="bell" data-loop="true" data-color="#ffffff" data-hovercolor="#ffffff" data-size="28"></i>
               <span class="label label-warning">7</span>
               </a>
               <ul class=" notifications dropdown-menu">
                  <li class="dropdown-title">You have 7 notifications</li>
                  <li>
                     <!-- inner menu: contains the actual data -->
                     <ul class="menu">
                        <li>
                           <i class="livicon danger" data-n="timer" data-s="20" data-c="white" data-hc="white"></i>
                           <a href="#">after a long time</a>
                           <small class="pull-right">
                           <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                           Just Now
                           </small>
                        </li>
                        <li>
                           <i class="livicon success" data-n="gift" data-s="20" data-c="white" data-hc="white"></i>
                           <a href="#">Jef's Birthday today</a>
                           <small class="pull-right">
                           <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                           Few seconds ago
                           </small>
                        </li>
                        <li>
                           <i class="livicon warning" data-n="dashboard" data-s="20" data-c="white" data-hc="white"></i>
                           <a href="#">out of space</a>
                           <small class="pull-right">
                           <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                           8 minutes ago
                           </small>
                        </li>
                        <li>
                           <i class="livicon bg-aqua" data-n="hand-right" data-s="20" data-c="white" data-hc="white"></i>
                           <a href="#">New friend request</a>
                           <small class="pull-right">
                           <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                           An hour ago
                           </small>
                        </li>
                        <li>
                           <i class="livicon danger" data-n="shopping-cart-in" data-s="20" data-c="white" data-hc="white"></i>
                           <a href="#">On sale 2 products</a>
                           <small class="pull-right">
                           <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                           3 Hours ago
                           </small>
                        </li>
                        <li>
                           <i class="livicon success" data-n="image" data-s="20" data-c="white" data-hc="white"></i>
                           <a href="#">Lee Shared your photo</a>
                           <small class="pull-right">
                           <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                           Yesterday
                           </small>
                        </li>
                        <li>
                           <i class="livicon warning" data-n="thumbs-up" data-s="20" data-c="white" data-hc="white"></i>
                           <a href="#">David liked your photo</a>
                           <small class="pull-right">
                           <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                           2 July 2014
                           </small>
                        </li>
                     </ul>
                  </li>
                  <li class="footer">
                     <a href="#">View all</a>
                  </li>
               </ul>
            </li>
            <!--USER MENU-->
            <li class="dropdown user user-menu">
               <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="${pageContext.request.contextPath}/resources/img/jmari.jpg" width="35" class="img-circle img-responsive pull-left" height="35" alt="riot">
                  <div class="riot">
                     <div>
                        ${viewName}
                        <span>
                        <i class="caret"></i>
                        </span>
                     </div>
                  </div>
               </a>
               <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header bg-light-blue">
                     <img src="${pageContext.request.contextPath}/resources/img/jmari.jpg" class="img-responsive img-circle" alt="User Image">
                     <p class="topprofiletext">${viewAppName}</p>
                  </li>
                  <!-- Menu Body -->
                  <li>
                     <a href="#">
                     <i class="livicon" data-name="user" data-s="18"></i>
                     My Profile
                     </a>
                  </li>
                  <li role="presentation"></li>
                  <li>
                     <a href="#">
                     <i class="livicon" data-name="gears" data-s="18"></i>
                     Account Settings
                     </a>
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                     <div class="pull-left">
                        <a href="lockscreen.html">
                        <i class="livicon" data-name="lock" data-s="18"></i>
                        Lock
                        </a>
                     </div>
                     <div class="pull-right">
                        <a href="/erp/">
                        <i class="livicon" data-name="sign-out" data-s="18"></i>
                        Logout
                        </a>
                     </div>
                  </li>
               </ul>
            </li>
         </ul>
      </div>
   </nav>
</header>