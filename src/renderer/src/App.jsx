import { useEffect, useState } from 'react'
import electronLogo from './assets/electron.svg'

function App() {
 const [data, setData] = useState({
  famfio:[],
  proffessii:[],
  catog:[],
  familyex:[]
 })
 useEffect(() =>{
  const fetchdata =async () =>{
    const result =await window.api.getalldb();
    console.log(result)
    setData(result)
  }
  fetchdata()
 }, [])

  return (
    <>
      <img alt="logo" className="logo" src={electronLogo} />
      <h1>Hello, world!</h1>
    </>
  )
}

export default App

