import React from 'react'
import {Link } from 'react-router-dom'
function SuccessResetPassword(props) {
    const {email} = props
    return (
        <div class="container-fluid  clr-primary-400 d-flex flex-column justify-content-around pt-lg-5 min100vh">
            
                <div class="row">
                <div class="col-md-6 col-sm-12 AuthCard m-auto py-5  px-2 d-flex flex-column align-items-center">
                <div class="container d-flex flex-column justify-content-around align-items-center">
                    <div class="p-2">
                        <svg width="70" height="70" viewBox="0 0 100 100" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M50 0C22.4311 0 0 22.4311 0 50C0 77.5689 22.4311 100 50 100C77.5689 100 100 77.5689 100 50C100 22.4311 77.5689 0 50 0ZM77.9449 36.8421L45.99 68.5464C44.1103 70.4261 41.1028 70.5514 39.0977 68.6717L22.1805 53.2581C20.1754 51.3784 20.0501 48.2456 21.8045 46.2406C23.6842 44.2356 26.817 44.1103 28.8221 45.99L42.2306 58.2707L70.802 29.6992C72.807 27.6942 75.9398 27.6942 77.9449 29.6992C79.9499 31.7043 79.9499 34.8371 77.9449 36.8421Z" fill="#5282F0"/>
                        </svg>
                    </div>
                    <div class="row title-heading">
                        Success !
                    </div>
                    <div class="w-80 text-center">
                        <p>
                        Your password has been successfully updated
                        {/* : {email} */}
                        </p>
                    </div>
                    <div class="p-3 w-100 d-flex flex-column align-items-center">
                       <Link to="/"> <button type="button" class="btn btn-primary w-70 ">OK</button> </Link>
                    </div>
                </div>
                    
                </div>
                </div>
            </div>
        
    )
}

export default SuccessResetPassword
