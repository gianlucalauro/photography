document.getElementById('sendMail').addEventListener('submit', function (e) {
    e.preventDefault();
    document.getElementById('sendButton').disabled = true;

    const formData = new FormData(this);
    formData.append('portfolio', 'photography');

    fetch(this.action, {
        method: this.method,
        body: formData
    })
        .then(response => response.json())
        .then(data => {
            console.log(data);

            window.location.href = 'mailSent.html';
        })
        .catch(error => {
            console.error(error);
            document.getElementById('sendButton').disabled = false;
        });
});