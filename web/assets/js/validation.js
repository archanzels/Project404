/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/* global required */

$(function () {
    $.validator.setDefaults({
        errorClass: 'help-block',
        highlight: function (element) {
            $(element)
                    .closest('.form-group')
                    .addClass('has-error');
        },
        unhighlight: function (element) {
            $(element)
                    .closest('.form-group')
                    .removeClass('has-error');
        }
    });

    $.validator.addMethod('strongPassword', function (value, element) {
        return this.optional(element)
                || value.length >= 6
                && /\d/.test(value);
    }, 'Password must be at least 6 characters long and contain at least one number');


    //Login Form Validation
    $("#login-form").validate({
        rules: {
            uname: "required",
            password: "required"
        }
    });

    //Register Form Validation
    $("#reg-form").validate({
        rules: {
            fname: {required: true},
            lname: {required: true},
            uname: {required: true},
            email: {
                required: true,
                email: true
            },
            password: {
                required: true,
                strongPassword: true
            },
            password2: {
                required: true,
                equalTo: '#password'
            }
        },
        messages: {
            email: {
                required: 'Please enter an email address',
                email: 'Please enter a valid email address'
            },
            password2: {
                equalTo: 'The passwords do not match'
            }
        }
    });
});