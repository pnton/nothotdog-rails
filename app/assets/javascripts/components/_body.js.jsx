const Body = (props) => {
  return(
    <div className="white-box">
      <header>
        <div className="head-wrap">
          <h1>🌭 Hotdog or Not Hotdog? 🌭</h1>
        </div>
      </header>
      <div className="container">
        <form method="post" encType="multipart/form-data" action="upload">
          <input className="btn btn-warning" id="img" name="file" type="file" accept=".jpeg,.jpg,.png" />
          <input className="btn btn-danger" type="submit" value="Check Hotdog" />
        </form>
        <div className="info-area">
          <div className="img-area"></div>
          <div className="status-area">
            <span className="status"></span>
          </div>  
        </div>
      </div>
    </div>
  )
}