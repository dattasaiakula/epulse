
$(function(){
  $('#form')
  .form({
    fields: {
       sid: {
        identifier: 'sid',
        rules: [
          {
            type   : 'regExp[/^[BNR][0-9]{6}$/]',
            prompt : 'Please enter valid ID  Number'
          }
        ]
      },
      email: {
        identifier: 'email',
        rules: [
          {
            type   : 'email',
            prompt : 'Please enter Valid Email'
          }
        ]
      },
      fname: {
        identifier: 'fname',
        rules: [
          {
            type   : 'regExp[/^[A-Za-z ]/]',
            prompt : 'Please enter Valid Email'
          }
        ]
      },
      name: {
        identifier: 'name',
        rules: [
          {
            type   : 'regExp[/^[A-Za-z ]/]',
            prompt : 'Please enter your name'
          }
        ]
      },
      aadhar: {
        identifier: 'aadhar',
        rules: [
          {
            type   : 'regExp[/^[0-9]{12}$/]',
            prompt : 'Please enter Valid aadhar Number'
          }
        ]
      },
      pass: {
        identifier: 'pass',
        rules: [
          {
            type   : 'regExp[/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[#$^+=!*()@%&]).{8,25}$/]',
            prompt : 'Please enter Valid Password it must contain 1.capital letter and 2.small letter 3.digit 4.special characters Ex: Rgukt@123'
          }
        ]
      },
      
      ssc_obtained: {
        identifier: 'ssc_obtained',
        rules: [
          {
            type   : 'decimal',
            prompt : 'Please enter Valid GPA/CGPA '
          }
        ]
      },
       school_name: {
        identifier: 'school_name',
        rules: [
          {
            type   : 'regExp[/^[a-zA-Z ]/]',
            prompt : 'Please enter correct shool name  '
          }
        ]
      },
       school_yop: {
        identifier: 'school_yop',
        rules: [
          {
            type   : 'number',
            prompt : 'Please enter correct shool year of passing'
          }
        ]
      },
      ssc_board : {
        identifier: 'ssc_board',
        rules: [
          {
            type   : 'regExp[/^[a-zA-Z ]/]',
            prompt : 'Please enter correct shool year of passing'
          }
        ]
      },
      puc_obtained : {
        identifier: 'puc_obtained',
        rules: [
          {
            type   : 'decimal',
            prompt : 'Please enter Valid CGPA/SGPA'
          }
        ]
      },
      puc_cgpa : {
        identifier: 'puc_cgpa',
        rules: [
          {
            type   : 'decimal',
            prompt : 'Please enter Valid CGPA/SGPA'
          }
        ]
      },
      e1s1 : {
        identifier: 'e1s1',
        rules: [
          {
            type   : 'decimal',
            prompt : 'Please enter Valid CGPA/SGPA'
          }
        ]
      },
      e1s2 : {
        identifier: 'e1s2',
        rules: [
          {
            type   : 'decimal',
            prompt : 'Please enter Valid CGPA/SGPA'
          }
        ]
      },
      e2s1 : {
        identifier: 'e2s1',
        rules: [
          {
            type   : 'decimal',
            prompt : 'Please enter Valid CGPA/SGPA'
          }
        ]
      },
      e2s2 : {
        identifier: 'e2s2',
        rules: [
          {
            type   : 'decimal',
            prompt : 'Please enter Valid CGPA/SGPA'
          }
        ]
      },
      e3s1 : {
        identifier: 'e3s1',
        rules: [
          {
            type   : 'decimal',
            prompt : 'Please enter Valid CGPA/SGPA'
          }
        ]
      },
      e3s2 : {
        identifier: 'e3s2',
        rules: [
          {
            type   : 'decimal',
            prompt : 'Please enter Valid CGPA/SGPA'
          }
        ]
      },
      engg_cgpa : {
        identifier: 'engg_cgpa',
        rules: [
          {
            type   : 'decimal',
            prompt : 'Please enter Valid CGPA/SGPA'
          }
        ]
      },
      backlogs : {
        identifier: 'backlogs',
        rules: [
          {
            type   : 'number',
            prompt : 'Please enter Valid CGPA/SGPA'
          }
        ]
      },
      
      edu_gap : {
        identifier: 'edu_gap',
        rules: [
          {
            type   : 'empty',
            prompt : 'Please enter Valid numbers'
          }
        ]
      },
      edu_reason : {
        identifier: 'edu_reason',
        rules: [
          {
            type   : 'empty',
            prompt : 'Please enter Valid Reason'
          }
        ]
      },
      street : {
        identifier: 'street',
        rules: [
          {
            type   : 'regExp[/^[A-Za-z ]/]',
            prompt : 'Please enter Street name'
          }
        ]
      },
    village : {
        identifier: 'village',
        rules: [
          {
            type   : 'regExp[/^[A-Za-z ]/]',
            prompt : 'Please enter Village name'
          }
        ]
      },
      mandal : {
        identifier: 'mandal',
        rules: [
          {
            type   : 'regExp[/^[A-Za-z ]/]',
            prompt : 'Please enter mandal name'
          }
        ]
      },
      pincode : {
        identifier: 'pincode',
        rules: [
          {
            type   : 'regExp[/^[4-9][0-9]{5}$/]',
            prompt : 'Please enter Valid pincode'
          }
        ]
      },
      intern_title : {
        identifier: 'intern_title',
        rules: [
          {
            type   : 'regExp[/^[A-Za-z ]/]',
            prompt : 'Please enter Valid Details'
          }
        ]
      },
      intern_scope : {
        identifier: 'intern_scope',
        rules: [
          {
            type   : 'regExp[/^[A-Za-z ]/]',
            prompt : 'Please enter Valid Details'
          }
        ]
      },
      intern_team : {
        identifier: 'intern_team',
        rules: [
          {
            type   : 'empty',
            prompt : 'Please enter Valid Details'
          }
        ]
      },
      intern_duration : {
        identifier: 'intern_duration',
        rules: [
          {
            type   : 'empty',
            prompt : 'Please fill the fields'
          }
        ]
      },
      ck : {
        identifier: 'ck',
        rules: [
          {
            type   : 'checked',
            prompt : 'Please fill the fields'
          }
        ]
      },
      intern_org : {
        identifier: 'intern_org',
        rules: [
          {
            type   : 'regExp[/^[A-Za-z ]/]',
            prompt : 'Please enter Valid Details'
          }
        ]
      },
      
      mobile: {
        identifier: 'mobile',
        rules: [
          {
            type   : 'regExp[/^[6789][0-9]{9}$/]',
            prompt : 'Please enter valid number'
          }
        ]
      }

    },
    inline : true,
    on     : 'blur'
  })
;

});
