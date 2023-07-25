import jQuery from 'jquery';

window.$ = jQuery;

// window.uploadRelocationData = function () {
//     alert('>>>>>>>>>>>>>>>>>>>>>>>>>>TESTING')
// }


$(document).on('DOMContentLoaded', () => {

    window.$ = jQuery;

    $('#testButton').on('click', function () {

        uploadType = getUploadType()
        uploadRelocationData(uploadType);

    });


})

window.uploadRelocationData = (uploadType) => {

    window.$ = jQuery;

    console.log('TEST UPLOAD')

    let linkedUID = $('#linkedUID').val();
    let moduleName = $('#moduleName').val();


    console.log(linkedUID)


    // var formData = $('#uploadForm').serialize(); // get the form data
    var formData = new FormData($('#uploadForm')[0]); // get the form data
    formData.append('file', $('#submittedFile')[0].files[0]);


    let file = $('#submittedFile').val()


    console.log(file);

    // return;
    if (file === '' || file === null) {

        let content = "<span class='bg-red-500 p-2 text-slate-700 font-mono rounded-md '>" + 'You must select a file!.' + '</span>'
        $('#upload_response').html(content)
        $('#upload_response').removeClass('hidden')

        setTimeout(() => {

            $('#upload_response').addClass('hidden')

        }, 2500);

        return

    }

    if (uploadType === '' || uploadType === null) {

        let content = "<span class='bg-red-500 p-2 text-slate-700 font-mono rounded-md '>" + 'You must select upladType!.' + '</span>'
        $('#upload_response').html(content)
        $('#upload_response').removeClass('hidden')

        setTimeout(() => {

            $('#upload_response').addClass('hidden')

        }, 2500);

        return

    }

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
        }
    });


    var fileName = $('#submittedFile').val().split('\\').pop(); // get the file name
    console.log(fileName); // log the file name
    console.log(formData)
    showLoadingOverlay()
    $.ajax({
        url: '/import/' + uploadType,
        type: 'POST',
        data: formData,
        processData: false,
        contentType: false,
        async: true,
        success: function (response) {

            // alert(uploadType)

            $('#upload_response').html(response.message)
            console.log('************************************************')
            $('#submittedFile').val('')

            $('#testArea').html(response)

            console.log(response);

            console.log('************************************************')
            console.log(response)
            console.log('&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&')
            hideLoadingOverlay()

            if(response.success===true)
            {
                $('#upload_success_notification').html(response.message).slideDown('slow')

            }
            else
            {
                $('#upload_failed_notification').html(response.hmtl).slideDown('slow')

            }

            setTimeout(() => {
                $('#upload_failed_notification').html(response.hmtl).slideUp('slow')
                $('#upload_success_notification').html(response.message).slideUp('slow')


            }, 2500);

            // responseCode=response.code;

            // if (responseCode === 100) {
            //     let content = "<span class='bg-green-400 p-2 text-white font-mono rounded-md'>" + response.message + '</span>'
            //     $('#upload_response').html(content)
            //     $('#upload_response').removeClass('hidden')

            // }
            // else {
            //     let content = "<span class='bg-red-400 p-2 text-white font-mono rounded-md '>" + 'Failed! Please Try again.' + '</span>'
            //     // let content = "<span class='bg-red-400 p-2 text-white font-mono rounded-md'>" + response.message + '</span>'

            //     $('#upload_response').html(content)
            //     $('#upload_response').removeClass('hidden')
            // }


            setTimeout(() => {

                $('#upload_response').addClass('hidden')

            }, 2500);

            // getAllAttchments()


            // console.log(response);
        },
        error: function (xhr, status, error) {

            let content = "<span class='bg-red-500 p-2 text-slate-700 font-mono rounded-md '>" + 'Upload Failed!.' + '</span>'
            $('#upload_response').html(content)
            $('#upload_response').removeClass('hidden')
            // $('#testArea').html(response)
            $('#testArea').html(xhr.responseText)

            console.log(xhr.responseText);
        }
    });


    return;

}

var uploadType = '';

window.getUploadType = () => {
    window.$ = jQuery;

    return uploadType;
}

// When a radio button is clicked
$('input[type=radio][name=options]').on('click', function () {

    window.$ = jQuery;

    // Get the value of the selected radio button
    var selectedOption = $('input[type=radio][name=options]:checked').val();

    // Do something based on the selected option
    switch (selectedOption) {
        case 'test':
            console.log('Test option selected');
            uploadType = $('input[type=radio][name=options]:checked').val()
            break;
        case 'main_valuations':
            console.log('Main Valuations option selected');
            uploadType = $('input[type=radio][name=options]:checked').val()
            break;
        case 'secondary_buildings':
            console.log('Secondary Buildings option selected');
            uploadType = $('input[type=radio][name=options]:checked').val()
            break;
        default:
            console.log('No option selected');
    }
});


