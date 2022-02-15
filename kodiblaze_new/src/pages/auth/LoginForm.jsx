import React, { useState } from 'react'
import { Link, useNavigate, Redirect } from 'react-router-dom'
import { RestLogin } from '../../api/Auth/Auth'
import { useDispatch, useSelector } from 'react-redux'
import { SET_AUTH_STATUS, SET_USER_DETAILS, SET_ACCESS_TOKEN } from '../../Reducers/types';
import Loader from "react-loader-spinner";


function LoginForm(props) {
    const { setDialogueBox, setMessage } = props
    const appliedClassName = `w-100 py-3 px-4 position-relative d-flex flex-column justify-content-around align-items-center `;
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [isLoading, setIsLoading] = useState(false);
    const [errorMessage, setErrorMessage] = useState("")
    const [status, setStatus] = useState(true)
    const dispatch = useDispatch()
    const navigate =  useNavigate()
    // onClick callback log in button clicked
    const handleRestLogin = (e) => {
        setIsLoading(true);
        setDialogueBox(false)
        if (email == '' || password == '') {
            setMessage('Please fill the fields!')
            setDialogueBox(true);
            setIsLoading(false);
            return;
        }
        e.preventDefault();
        RestLogin({ email, password })
            .then((res) => {

                setIsLoading(false);
                if (res.status) {
                    dispatch({ type: SET_AUTH_STATUS, payload: { authStatus: true } });
                    dispatch({ type: SET_USER_DETAILS, payload: { userDetails: res.user } });
                    dispatch({ type: SET_ACCESS_TOKEN, payload: { accessToken: res.accessToken } });
                    navigate('/app/dashboard');
                }
                else {
                    setMessage(res.message)     
                    setStatus(res.status)               
                    setDialogueBox(true)

                }


            })
            .catch((err) => {
                setIsLoading(false);
                console.error(err);
            });
    };

    return (

        <div class={appliedClassName}>
            <div class="row title-heading w-100 px-3 d-flex flex-row">
                Login
            </div>
            <div class="w-100 px-3 pt-5 pb-2">
                {/* Form */}
                <div class={status?"styled-form-group w-100 d-flex flex-row ":"styled-form-groupa w-100 d-flex flex-row "}>
                    <div class="d-flex flex-row align-items-center inputIcon">
                        <svg width="25" height="25" viewBox="0 0 25 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M24.1071 3.57144H0.892883L12.5 13.1322L24.2384 3.59823C24.1954 3.58567 24.1515 3.57673 24.1071 3.57144Z" fill="#1F1A38" />
                            <path d="M13.0634 14.9785C12.7344 15.2479 12.2611 15.2479 11.9321 14.9785L0 5.14819V20.5357C0 21.0288 0.399745 21.4286 0.892874 21.4286H24.1071C24.6003 21.4286 25 21.0288 25 20.5357V5.28034L13.0634 14.9785Z" fill="#1F1A38" />
                        </svg>
                    </div>
                    <div class="w-100">
                        <input type="text" class="form-control w-100 authInputs" value={email}
                            onChange={(e) => setEmail(e.target.value)} type="email" placeholder="Email ID" aria-label="Email Id" aria-describedby="basic-addon1" />
                    </div>
                </div>


            </div>

            <div class="w-100 px-3 pt-5 pb-5">
                {/* Form */}
                <div class={status?"styled-form-group w-100 d-flex flex-row ":"styled-form-groupa w-100 d-flex flex-row "}>
                    <div class="d-flex flex-row align-items-center inputIcon">
                        <svg width="19" height="25" viewBox="0 0 19 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M18.3542 9.375H16.7917V7.29165C16.7917 3.271 13.5207 0 9.5 0C5.4793 0 2.20835 3.271 2.20835 7.29165V9.375H0.64585C0.357959 9.375 0.125 9.60796 0.125 9.89585V22.9167C0.125 24.0657 1.05933 25 2.20835 25H16.7917C17.9407 25 18.875 24.0657 18.875 22.9167V9.89585C18.875 9.60796 18.642 9.375 18.3542 9.375ZM11.0595 20.255C11.0757 20.402 11.0285 20.5495 10.9298 20.6599C10.8311 20.7703 10.6897 20.8333 10.5417 20.8333H8.45835C8.31035 20.8333 8.16895 20.7703 8.07026 20.6599C7.97158 20.5496 7.92427 20.4021 7.94058 20.255L8.26914 17.3004C7.7356 16.9124 7.4167 16.2984 7.4167 15.625C7.4167 14.476 8.35103 13.5417 9.50005 13.5417C10.6491 13.5417 11.5834 14.476 11.5834 15.625C11.5834 16.2984 11.2645 16.9124 10.731 17.3004L11.0595 20.255ZM13.6667 9.375H5.33335V7.29165C5.33335 4.99419 7.20254 3.125 9.5 3.125C11.7975 3.125 13.6667 4.99419 13.6667 7.29165V9.375V9.375Z" fill="#1F1A38" />
                        </svg>

                    </div>
                    <div class="w-100">
                        <input type="text" class="form-control w-100 authInputs" onChange={(e) => setPassword(e.target.value)}
                            type="password" placeholder="Password" aria-label="Email Id" aria-describedby="basic-addon1" />
                    </div>
                </div>


            </div>

            {isLoading ? (
                <button type="submit" class="btn btn-primary" >
                    <Loader
                        type="Puff"
                        color="white"
                        height={30}
                        width={30}
                    />
                </button>
            ) : (
                <button type="submit" class="btn btn-primary" onClick={handleRestLogin}>Login</button>
            )}

            <Link to="/forgotpassword"><p class="pt-2 pb-4">Forgot Password?</p></Link>


        </div>
    )
}

export default LoginForm
