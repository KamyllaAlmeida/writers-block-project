import React, { Component } from 'react';

class ReadPageText extends Component {
  constructor(props) {
    super (props);

    this.state = {
      segment: this.props.segmentId,
    }





  }




  render() {
    return(
      <div style={{color: this.props.changeColor(this.props.segmentId)}} tabIndex={this.props.segmentId} className='selectedSegment' onClick={this.props.onClick.bind(null, this)}>
        {this.props.text}
        <br />
        <br />
      </div>
    )
  }
}


export default ReadPageText;