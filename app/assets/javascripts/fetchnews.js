// var google_path = 'https://ajax.googleapis.com/ajax/services/search/news?v=1.0&q=manchester%20united'
// $.get(google_path, function(data) {
// 	console.log(data)
// });

$.ajax({
	type:'GET',
	dataType:'jsonp',
	url:'https://ajax.googleapis.com/ajax/services/search/news?v=1.0&q=manchester%20united',
	success:function(data) {
		data = data.responseData.results
		var $list = $('<ul>').addClass('inline-list');
		console.log(data);
		for (var i=0; i<data.length; i++){
			$('<li>').html('Title: '+data[i]['title']).appendTo($list)
		}
		$('#news-details-container').append($list);
	},
	error:function() {
		alert("Sorry, no updates");	
	}
});