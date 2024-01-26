import React from 'react'
import "../styles/ardi.css";


const GantiKatsan = () => {
  return (
    <div className='d-flex vh-100 justify-content-center align-items-center'>
        <div className="bg-kng d-flex justify-content-around align-items-center border rounded shadow">
            <img src="/logo-black.png" alt="" width={'290px'}/>
            <div className="form-update-sandi">
                <h3 className='fw-bold text-center mb-3'>Ganti Kata Sandi</h3>
                <form className='d-flex flex-column gap-3' id='updateSandi' action="">
                    <input className='form-control rounded' type="password" name="newPassword" id="newPassword" placeholder='Kata Sandi Baru' />
                    <input className='form-control rounded' type="password" name="newPassword1" id="newPassword1" placeholder='Konfirmasi Kata Sandi Baru' />
                    <input className='btn-b' type="submit" value="Simpan" />
                </form>
            </div>
        </div>
    </div>
  )
}

export default GantiKatsan