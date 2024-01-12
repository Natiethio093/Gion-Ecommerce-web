<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Document</title>
</head>

<body>
   <section class="subscribe_section">
   <a href="#comments" id="comments"></a>
      <div class="container-fuild">
         <div class="box" style="background-color:#dddcdd">
            <div class="row">
               <div class="col-md-6 offset-md-3">
                  <div class="subscribe_form ">
                     <div class="heading_container heading_center">
                        <h3>Comments</h3>
                     </div>
                     
                     <!-- @if(session('message'))
                     <div class="alert alert-success" id="flash-message" role="alert">
                        {{ session('message') }}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                           <span aria-hidden="true" onclick="removeFlashMessage()">X</span>
                     </div>
                     @endif -->

                     <form action="{{url('send_comment')}}" method="post">
                        @csrf
                        <textarea type="text" placeholder="Please Write Comment/Suggestion if any" name="comment"></textarea>
                        <button>
                           send
                        </button>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
   <script>
      function removeFlashMessage() {
         var flashMessage = document.getElementById('flash-message');
         if (flashMessage) {
            flashMessage.parentNode.removeChild(flashMessage);
         }
      }
   </script>
</body>

</html>