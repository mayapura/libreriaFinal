if (document.getElementById("app")) {
    const app = new Vue({
        el: "#app",
        data() {
            return {
                libros: [],
                errored: false,
                loading: true,
            }
        },
        created() {
            var url = "http://localhost:8080/libros"
            this.fetchData(url);
        },
        methods: {
            fetchData(url) {
                fetch(url)
                    .then(response => response.json())
                    .then(data => {
                        this.libros = data;
                        this.loading = false;
                    })
                    .catch(err => {
                        this.errored = true
                    })
            }
        }
    })

}