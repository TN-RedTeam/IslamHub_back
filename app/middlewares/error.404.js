function error404(request, response) {
    response.status(404).json({ message: 'Route not found' });
}

export default error404;
