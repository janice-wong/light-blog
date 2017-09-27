document.addEventListener("DOMContentLoaded", function(event) {
  var app = new Vue({
    el: '#app',
    data: {
      posts: [],
      newTitle: '',
      newPost: '',
      errors: []
    },
    mounted: function() {
      $.get('api/posts', function(response) {
        this.posts = response;
      }.bind(this));
    },
    methods: {
      addPost: function() {
        var parameters = {
          title: this.newTitle,
          post: this.newPost
        };
        $.post('/api/posts', parameters, function(response) {
          this.posts.splice(0, 0, response);
        }.bind(this)).fail(function(responseError) {
          this.errors = responseError.responseJSON.errors;
        }.bind(this));
        this.newTitle = '';
        this.newPost = '';
      }
    },
    computed: {

    }
  });
});
