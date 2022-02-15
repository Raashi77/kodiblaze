import React, { useState } from 'react'
import { Col, Container, Row } from 'react-bootstrap';
import LoginForm from './LoginForm'
import Banner from './Banner';
function Login() {
    // error box in case of faulty entries
    const [dialogueBox, setDialogueBox] = useState(false)
    const [message, setMessage] = useState("invalid credentials")
    return (
        <Container fluid className="clr-primary-400">
            <div class="container d-flex flex-column justify-content-around pt-lg-5 min100vh">
                <div class="row title-heading heading-color-white">
                    Welcome Back
                </div>
                <div class="row ">
                    <div class="col-md-6 col-sm-12 AuthCard m-auto p-0 d-flex flex-column flex-md-row ">
                        <LoginForm
                            setDialogueBox={setDialogueBox}
                            setMessage={setMessage} />
                    </div>
                    <div class="col-md-6">
                        <Banner />
                    </div>
                </div>
                {
                    (dialogueBox) ?
                        <div class="row pt-2 ">
                            <div class="col-md-5 df  col-sm-12 clr-danger-100 ">
                                <div class="   text-center">
                                    {message}
                                </div>
                            </div>

                        </div>

                        :
                        <> </>
                }

                <div class="row title-sub-heading d-flex flex-row-reverse heading-color-white">
                    Academe Admin
                </div>
            </div>


        </Container>


    )
}

export default Login
