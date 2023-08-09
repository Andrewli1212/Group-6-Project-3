function toggleDarkMode() {
    document.body.classList.toggle('dark-mode');
}

document.getElementById('switch').addEventListener('click', function () {
    toggleDarkMode();
});