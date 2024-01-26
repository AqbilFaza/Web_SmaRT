import React from 'react'
import "../styles/ardi.css";

const LupaKatsan = () => {
  return (
    <div>
        <div className='d-flex vh-100 justify-content-center align-items-center'>
        <div className="bg-kng d-flex justify-content-around align-items-center border rounded shadow">
            <img src="/logo-black.png" alt="" width={'290px'}/>
            <div className="form-update-sandi">
                <h3 className='fw-bold text-center mb-3'>Lupa Kata Sandi</h3>
                <form className='d-flex flex-column gap-3' id='lupaSandi' action="">
                    <input className='form-control rounded' type="email" name="email" id="email" placeholder='Masukkan Email' />
                    <input className='btn-b' type="submit" value="Kirim" />
                </form>
            </div>
        </div>
    </div>
    </div>
  )
}

export default LupaKatsan