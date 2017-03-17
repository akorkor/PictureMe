// $('#like').on('click', submitLike)
//
// function submitLike(){
//
//   e.preventDefault();
//   $.ajax({
//       url: "/likes",
//       data: { user_id: "", photo_id: "", like: true },
//       method: "GET"
//       dataType: "json"
//   }).success(function(jsonData){
//       console.log("*** ajax success ***");
//       console.dir(jsonData);
//       displayArtistData(jsonData);
//   }).error(function(){
//       console.log("*** ajax error ***");
//       handleAjaxError(jsonData);
//   });
//
// }

// $('#like1').click(function(e){
//   e.preventDefault();
//   $.ajax({
//        url: "/likes",
//        type: "GET",
//        data: { user_id: "", photo_id: "", like: true },
//        success: function (data) {
//          console.log("*** ajax success ***");
//        },
//        error: function(xhr, ajaxOptions, thrownError){
//          console.log("*** ajax error ***");
//        },
//        timeout : 15000//timeout of the ajax call
//   });
//
// });
// console.log("$('#like1'): ", $('#like1'));
//
// $('#like1').on('click', function (event){
//   console.log("click");
//       event.preventDefault();
//     //  $.ajax({
//     //     url: $(this).attr('/likes')
//     //     ,success: function(response) {
//     //         alert(response)
//     //     }
//     //  })
//     //  return false; //for good measure
// });
