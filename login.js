document.addEventListener('DOMContentLoaded', function() 
{
    const form = document.querySelector('form');
    if (form)
    {
        form.addEventListener('submit', function(event) 
        {
            const usrInput = document.getElementById('usr');
            const passInput = document.getElementById('pass');
            const usr = usrInput.value.trim();
            const pass = passInput.value.trim();
                
            if (!usr) 
            {
                alert('Adjon meg felhasználónevet!');
                event.preventDefault();
                return;
            }
                
            //lolcat ideiglenes
            else if (usr === 'lolcat') 
            {
                return;
            }
                
            else if (!pass) 
            {
                alert('Adjon meg jelszót!');
                event.preventDefault();
            }
        });
    }
});