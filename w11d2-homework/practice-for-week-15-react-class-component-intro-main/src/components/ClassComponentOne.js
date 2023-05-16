import { Component } from "react";
import FunctionComponentTwo from "./FunctionComponentTwo";

class ClassComponentOne extends Component {
    constructor(props) {
        super(props);
        this.state = {
            count: 0,
            message: ''
        };
    }
    render() {
        return (
            <div className='center'>
              <h1>Class Component One</h1>
              <div className='one'>
                <button onClick={() => {}}>
                  Decrement
                </button>
                <button onClick={() => {}}>
                  Increment
                </button>
        
                <input
                  type='text'
                  value={undefined}
                  onChange={ => {}}
                  placeholder='Enter Your Message'
                />
                <button onClick={() => {}}>Clear</button>
              </div>
        
              <FunctionComponentTwo count={undefined} message={undefined} />
            </div>
          );
    }
}

export default ClassComponentOne;