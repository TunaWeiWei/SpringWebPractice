document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          initialView: 'dayGridMonth',
          locale: 'zh-tw',
          navLinks: true,          
          headerToolbar: {       	  
        	  left: 'prev,next today',
        	  center: 'title',
        	  right: 'dayGridMonth,timeGridDay'     	  
        	  
          },
          	  events: [{
                 title: '公休',
                 start: '2023-08-09',
                 end: '2023-08-14'
             },
             {
                 title: '公休',
                 start: '2023-08-21',
                 end: '2023-08-25'
             },
             {
                 title: '公休',
                 start: '2023-08-27',
                 end: '2023-08-27'
             }

         ]
          
        });
        calendar.render();
      });