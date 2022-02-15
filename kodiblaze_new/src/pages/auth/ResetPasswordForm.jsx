import React, { useState } from 'react'
import Loader from 'react-loader-spinner';
import { Link, useNavigate } from 'react-router-dom'
import { changePassword } from '../../api/Auth/Auth';
function ResetPasswordForm({userID,token,setErrorMessage,showError}) {
    
    const appliedClassName = `w-100 py-3 px-4 position-relative d-flex flex-column justify-content-around align-items-center `;

    
    const [loader, setLoader] = useState(false);
    const navigate =  useNavigate()
    
    const [password, setPassword] = useState("")
    const [confirmPassword, setConfirmPassword] = useState("")


    function iniateChangePassword() {
        if (password && confirmPassword != '') {
            setLoader(true);
            changePassword(userID, token, confirmPassword)
                .then((res) => {
                    console.log(res);
                    if (res.status) {
                        setLoader(false);
                        navigate("/successresetpassword");
                    }
                    else {
                        setLoader(false);
                        showError(true);
                        setErrorMessage('Something went wrong!');
                    }
                })
                .catch((err) => {
                    console.log(err);
                    setLoader(false);
                })
        }
        else {
            showError(true);
            setErrorMessage('Please enter your New Paasowd');
        }
    }

    return (
        <div class={appliedClassName}>
            <div class="row title-heading w-100 px-3 d-flex flex-row">
                Please make sure you enter atleast 8 characters
            </div>
            <div class="w-100 pt-3 px-3">
                <div class="w-100  p-2">
                    {/* Form */}
                    <div class="styled-form-group w-100  d-flex flex-row ">
                        <div class="d-flex flex-row align-items-center inputIcon">
                            <svg width="19" height="25" viewBox="0 0 19 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M18.3542 9.375H16.7917V7.29165C16.7917 3.271 13.5207 0 9.5 0C5.4793 0 2.20835 3.271 2.20835 7.29165V9.375H0.64585C0.357959 9.375 0.125 9.60796 0.125 9.89585V22.9167C0.125 24.0657 1.05933 25 2.20835 25H16.7917C17.9407 25 18.875 24.0657 18.875 22.9167V9.89585C18.875 9.60796 18.642 9.375 18.3542 9.375ZM11.0595 20.255C11.0757 20.402 11.0285 20.5495 10.9298 20.6599C10.8311 20.7703 10.6897 20.8333 10.5417 20.8333H8.45835C8.31035 20.8333 8.16895 20.7703 8.07026 20.6599C7.97158 20.5496 7.92427 20.4021 7.94058 20.255L8.26914 17.3004C7.7356 16.9124 7.4167 16.2984 7.4167 15.625C7.4167 14.476 8.35103 13.5417 9.50005 13.5417C10.6491 13.5417 11.5834 14.476 11.5834 15.625C11.5834 16.2984 11.2645 16.9124 10.731 17.3004L11.0595 20.255ZM13.6667 9.375H5.33335V7.29165C5.33335 4.99419 7.20254 3.125 9.5 3.125C11.7975 3.125 13.6667 4.99419 13.6667 7.29165V9.375V9.375Z" fill="#5282F0" />
                            </svg>

                        </div> 
                            <div class="w-100">
                                <input type="text" class="form-control w-100 authInputs"
                                    type="password" placeholder="New Password" aria-label="password" aria-describedby="basic-addon1" onChange={(e) => setPassword(e.target.value)}/>
                            </div>
                       
                    </div>
                </div>

                <div class="w-100 px-2 pt-5">
                    {/* Form */}
                    <div class="styled-form-group w-100  d-flex flex-row ">
                        <div class="d-flex flex-row align-items-center inputIcon">
                            <svg width="19" height="25" viewBox="0 0 19 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M18.3542 9.375H16.7917V7.29165C16.7917 3.271 13.5207 0 9.5 0C5.4793 0 2.20835 3.271 2.20835 7.29165V9.375H0.64585C0.357959 9.375 0.125 9.60796 0.125 9.89585V22.9167C0.125 24.0657 1.05933 25 2.20835 25H16.7917C17.9407 25 18.875 24.0657 18.875 22.9167V9.89585C18.875 9.60796 18.642 9.375 18.3542 9.375ZM11.0595 20.255C11.0757 20.402 11.0285 20.5495 10.9298 20.6599C10.8311 20.7703 10.6897 20.8333 10.5417 20.8333H8.45835C8.31035 20.8333 8.16895 20.7703 8.07026 20.6599C7.97158 20.5496 7.92427 20.4021 7.94058 20.255L8.26914 17.3004C7.7356 16.9124 7.4167 16.2984 7.4167 15.625C7.4167 14.476 8.35103 13.5417 9.50005 13.5417C10.6491 13.5417 11.5834 14.476 11.5834 15.625C11.5834 16.2984 11.2645 16.9124 10.731 17.3004L11.0595 20.255ZM13.6667 9.375H5.33335V7.29165C5.33335 4.99419 7.20254 3.125 9.5 3.125C11.7975 3.125 13.6667 4.99419 13.6667 7.29165V9.375V9.375Z" fill="#5282F0" />
                            </svg>

                        </div> 
                        <div class="w-100">
                            <input type="text" class="form-control w-100 authInputs"
                                type="password" placeholder="Confirm New Password" aria-label="password" aria-describedby="basic-addon1" onChange={(e) => setConfirmPassword(e.target.value)}/>
                        </div>
                    </div>




                </div>
            </div>
            <div class="py-5">
                {loader ? (
                    <button type="button" class="btn btn-primary " >
                        <Loader
                            type="Puff"
                            color="white"
                            height={30}
                            width={30}
                        />
                    </button>
                ) : (
                    <button type="submit" class="btn btn-primary py-2" onClick={() => iniateChangePassword()}>Reset</button>
                )}
            </div>

        </div>
    )
}

export default ResetPasswordForm
