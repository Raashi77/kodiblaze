import React, { useState } from 'react'
import { Col, Container, Row } from 'react-bootstrap';
import ForgotPasswordForm from './ForgotPasswordForm';
import Banner from './Banner';
function ForgotPassword() {

    //shows the error when users try to send otp without gmail
    const [errorMessage, setErrorMessage] = useState(false);
    const [error, showError] = useState(false);

    return (
        <Container fluid className="min-vh-00 max-vh-100  px-5 clr-primary-400 ">
            <div class="container d-flex flex-column justify-content-around pt-lg-5 min100vh">
                <div class="row title-heading heading-color-white">
                    Forgot Password?
                </div>
                    {
                        (error) ?
                            <div class="row pt-2 " style={{ margin: 5 }}>
                                <div class="col-md-5  col-sm-12 clr-danger-100">
                                    <div class="   text-center">
                                        {errorMessage}
                                    </div>
                                </div>

                            </div>
                            :
                            <> </>
                    }
                <div class="row ">
                    <div class="col-md-6 col-sm-12 AuthCard m-auto p-0 d-flex flex-column flex-md-row ">
                        <ForgotPasswordForm showError={showError} setErrorMessage={setErrorMessage} />
                    </div>
                    <div class="col-md-6">
                        <Banner />
                    </div>
                </div>
                <div class="row title-sub-heading d-flex flex-row-reverse heading-color-white">
                    Academe Admin
                </div>
            </div>


        </Container>
    )
}

export default ForgotPassword
