$(document).ready(function(){
  var getSpeccolleges = function(college_id){
    var $speccolleges = $('#listing_speccollege_id');
    $($speccolleges).empty();
    
    $.post('/speccolleges/find_by_college', { college_id: college_id }, function(data){
      $.each(data.speccolleges, function(index, speccollege){
        var option = $('<option />');
        option.attr('value', speccollege.id);
        option.text(speccollege.name);
        option.appendTo($speccolleges);
      });
    })
  };
  
  var getSelectedCollege = function(){
    return $('#listing_college_id').val();
  };
  
  $('#listing_college_id').change(function(){
    var college_id = getSelectedCollege();
    getSpeccolleges(college_id);
  });
  
  getSpeccolleges(getSelectedCollege());
});