import React, {useState} from 'react'

const Counter = () => {
   
    const [count, setCount] = useState(1);
    const decrement = () =>{
        let lcount = count;
        setCount (lcount <=0?0:lcount-1);
    }
    const increment = () =>{
        let lcount = count;
        setCount (lcount+1);
    }
    const changeClass = () =>{
        let check = count<=0? "btn btn-danger":"btn btn-warning";
        return check;
    }
  return (
    <div className = "my-6">
        <button className="btn btn-outline-danger mx-2" onClick={decrement}> Decrement </button>
        <span className= {changeClass()} > {count===0?"zero":count} </span>
        <button className="btn btn-outline-success mx-2" onClick={increment}> Increment </button>        
    </div>
  )
}

export default Counter
