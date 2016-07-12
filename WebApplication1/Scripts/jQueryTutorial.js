/// <reference path="jquery-1.10.2.js" />

$(document).ready(function () {
    //$('#button1').css('background-color', 'yellow')

    //$('span').each(function(){
    //    alert($(this).attr('title'))
    //})

    //var config = {//this object can be passed inline into the attr below
    //    'title': "new span title",
    //    'style': 'border:3px solid red',
    //    'name': 'my span'
    //}
    //$('span').attr(config);
    //var result = "";
    //$('span').each(function () {
    //    result += 'title = ' + $(this).attr('title') + '<br/>';
    //    result += 'style = ' + $(this).attr('style') + '<br/>';
    //    result += 'name = ' + $(this).attr('name') + '<br/>';
    //})
    //$('#multipleAttr').html(result)
    
    //$.each to iterate of JS objects or arrays. .each to iterate over raw DOM elements. Wrap DOM element in $() to convert to jQuery
    $('input[name="skills"]').click(function () {
        getSelected('skills');
    })

    $('input[name="cities"]').click(function () {
        getSelected('cities')
    })

    var getSelected = function (groupName) {
        var result = $('input[name="'+groupName+'"]:checked');
        if (result.length > 0) {
            var resultString = result.length + " checkbox(s) checked <br/>";
            result.each(function () {
                var selectedValue = $(this).val();
                resultString += selectedValue + " - " + $('label[for="option-'+selectedValue+'"]').text() + "<br/>";
            });
            $('#div'+groupName).html(resultString);
        }
        else {
            $('#div'+groupName).html(" No radio button checked");
        }
    }
});