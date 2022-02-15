import React, { useState } from 'react'
import { Link, useNavigate } from 'react-router-dom'
import { sendOTP } from '../../api/Auth/Auth'
import Loader from "react-loader-spinner";
import { Modal } from 'react-bootstrap';
function ForgotPasswordForm(props) {
    const { setErrorMessage, showError } = props
    const [loader, setLoader] = useState(false);
    const [email, setEmail] = useState("")
    const navigate =  useNavigate()


    const appliedClassName = `w-100 py-3 px-4 position-relative d-flex flex-column align-items-center `;


    function iniateForgotPassword() {
        if (email != '') {
            setLoader(true);
            sendOTP(email)
                .then((res) => {
                    console.log(res);
                    if (res.status) {
                        setLoader(false);
                        navigate("/successforgotpassword");
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
            setErrorMessage('Please enter your email address');
        }
    }

    return (
        <>
            <div class={appliedClassName}>
                <div>
                    {/* Heading and Sub heading */}
                    <div class="row title-heading w-100 px-3 d-flex flex-row">
                        We'll help you to reset it & get back on track
                    </div>
                    <p class=" h5 pt-3 heading w-100  d-flex flex-row fw-regular"> Please enter your registered email id to receive a OTP </p>
                </div>
                <div class="w-100 px-3 py-5">
                    {/* Form */}
                    <div class="styled-form-group w-100  d-flex flex-row ">
                        <div class="d-flex flex-row align-items-center inputIcon">
                            <svg width="25" height="25" viewBox="0 0 25 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M24.1071 3.57144H0.892883L12.5 13.1322L24.2384 3.59823C24.1954 3.58567 24.1515 3.57673 24.1071 3.57144Z" fill="#1F1A38" />
                                <path d="M13.0634 14.9785C12.7344 15.2479 12.2611 15.2479 11.9321 14.9785L0 5.14819V20.5357C0 21.0288 0.399745 21.4286 0.892874 21.4286H24.1071C24.6003 21.4286 25 21.0288 25 20.5357V5.28034L13.0634 14.9785Z" fill="#1F1A38" />
                            </svg>
                        </div>
                        <div class="w-100">
                            <input type="email" class="form-control w-100 authInputs" placeholder="Email ID" aria-label="Email Id" aria-describedby="basic-addon1"
                                onChange={(e) => setEmail(e.target.value)}
                            />
                        </div>
                    </div>


                </div>
                <div class="d-flex flex-column align-items-center">
                    {/* Button Group */}
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
                        <button type="button" class="btn btn-primary " onClick={() => iniateForgotPassword()}>Next</button>
                    )}
                    <Link to="/"><p class="pt-3">Back to Login</p></Link>
                </div>
            </div>
        </>
    )
}

export default ForgotPasswordForm
