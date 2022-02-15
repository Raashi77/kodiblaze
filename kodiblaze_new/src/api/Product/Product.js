import { apiUrl } from '../../config';


    //api function for adding a subject 
    async function addProduct({name, description, code, inStock, productSKU, gender, category, price,userId,tags,images}) {
      // console.log(title, description, code, inStock, productSKU, gender, category, regularPrice)
        var formData   = new FormData();  
        formData.append("title",name)  
        formData.append("description",description)  
        formData.append("code",code)
        formData.append("productSKU",productSKU)
        formData.append("inStock",inStock)
        formData.append("gender",gender)
        formData.append("category",category)
        formData.append("regularPrice",price)
        formData.append("addProduct",true) 
        formData.append("tags",tags)
        images.map(image=>{
            formData.append("images[]",image)
        })
        
        formData.append("userId",userId)
        const data = await fetch(apiUrl + 'product.php', {
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
      async function fetchProducts(offset,limit) { 
        const data = await fetch(apiUrl + 'product.php', {
          method: 'POST',
          headers: {
            Accept: 'application/json',
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({offset,limit,fetchProducts:true})
        }).then((res) => res.json());
        return data; 
      }

      //fetch blog by slug
      async function fetchProductBySlug(productSlug) { 
        const data = await fetch(apiUrl + 'product.php', {
          method: 'POST',
          headers: {
            Accept: 'application/json',
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({productSlug,fetchProduct:true})
        }).then((res) => res.json());
        return data; 
      }
      
      export {addProduct, deleteBlog,fetchProducts,fetchProductBySlug  }



