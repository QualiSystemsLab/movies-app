import axios from 'axios'
let API_URL= window.location.origin
console.log(`API URL: ${API_URL}  // Using a reverse proxy on "/api" `)

const api = axios.create({baseURL:`${API_URL}:7000/api`})

export const insertMovie = payload => api.post('/movie', payload)
export const getAllMovies = () => api.get(`/movies`)
export const updateMovieById = (id, payload) => api.put(`/movie/${id}`, payload)
export const deleteMovieById = id => api.delete(`/movie/${id}`)
export const getMovieById = id => api.get(`/movie/${id}`)

const apis = {
    insertMovie,
    getAllMovies,
    updateMovieById,
    deleteMovieById,
    getMovieById,
}

export default apis
