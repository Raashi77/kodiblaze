import { apiUrl } from '../../config';


    //api function for adding a subject 
    async function addBlog(title, description, content, tags, cover, publish, metaTitle, metaDescription,userId,isAuthorUser) {
      // console.log(title, description, content, tags, cover, publish, metaTitle, metaDescription)
        var formData   = new FormData();  
        formData.append("title",title)  
        formData.append("description",description)  
        formData.append("content",content)
        formData.append("cover",cover)
        formData.append("tags",tags)
        formData.append("publish",publish)
        formData.append("metaTitle",metaTitle)
        formData.append("metaDescription",metaDescription)
        formData.append("addBlog",addBlog)
        formData.append("isAuthorUser",isAuthorUser)
        formData.append("userId",userId)
        const data = await fetch(apiUrl + 'blog.php', {
          method: 'POST',
          
          body:formData,
        }).then((res) => res.json());

        return data;  
      }

    async function deleteBlog(blogId)
      { 
        var details = {
            deleteBlog: true,
            blogId: blogId
        };

        var formBody = [];
        for (var property in details) {
          var encodedKey = encodeURIComponent(property);
          var encodedValue = encodeURIComponent(details[property]);
          formBody.push(encodedKey + "=" + encodedValue);
        }
        formBody = formBody.join("&");
        const data = await fetch(apiUrl + 'blog.php', {
          method: 'DELETE',
          headers: {
            Accept: 'application/json',
            'Content-Type': 'application/json',
          },
          body:formBody,
        }).then((res) => res.json());
        return data;
      }

      //fetch blogs
      async function fetchBlogs(offset,limit,isAuthorUser) { 
        const data = await fetch(apiUrl + 'blog.php', {
          method: 'POST',
          headers: {
            Accept: 'application/json',
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({offset,limit,fetchBlogs:true,isAuthorUser})
        }).then((res) => res.json());
        return data; 
      }

      //fetch blog by slug
      async function fetchBlogBySlug(blogSlug) { 
        const data = await fetch(apiUrl + 'blog.php', {
          method: 'POST',
          headers: {
            Accept: 'application/json',
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({blogSlug,fetchBlog:true})
        }).then((res) => res.json());
        return data; 
      }
      
      export {addBlog, deleteBlog,fetchBlogs,fetchBlogBySlug  }



