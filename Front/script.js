
document.addEventListener('DOMContentLoaded', function() {
        updateVisitorCount();
});

async function updateVisitorCount() {
    const counterElement = document.getElementById('visitor-count');
    
    try {
        
        const response = await fetch('https://twilight-cake-b1f4.miausrz.workers.dev/')

        if (!response.ok) {
            throw new Error ('Network response was not ok');
        }
        
        const data = await response.json();
        counterElement.textContent = data.visits;

    } catch (error) {
        console.error('Error fetching visitor count:', error);
        counterElement.textContent = 'Error';
    }
}
