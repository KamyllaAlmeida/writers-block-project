import React, { Component } from 'react';
import axios from 'axios';
import { NavLink } from 'react-router-dom';
import ReadPageText from './ReadPageText';
import ReadPageFeedback from './ReadPageFeedback';

class ReadPage extends Component {
  constructor(props) {
    super (props);

    this.state ={
      data: {
        story: {},
        segments: [],
        author: {},
        number_of_likes: {},
        segments_feedbacks: [],
      },
      selectedSegment: 0,
      feedback: [],
      text: "",
    }

     this.selectSegment = this.selectSegment.bind(this);
     this.getFeedBack = this.getFeedBack.bind(this);
     this.handleChange = this.handleChange.bind(this);
     this.handleSubmit = this.handleSubmit.bind(this);
     this.handleStoryLike = this.handleStoryLike.bind(this);

    let storyId = props.match.params.id
    const storyIdInt = Number.parseInt(storyId)
    console.log(props)
    console.log(storyId)

    axios.get(`http://localhost:3000/api/stories/${storyId}/segments`)
    .then(res => {
      console.log('get request for readpage', res)
      this.setState({data:res.data})
      console.log('readPage state', this.state)
    })
    .catch(err => {
      console.log('error', err)
    })
  }


  listOfSegments(){
    const segments = this.state.data.segments;
    return segments.map((segment, index) => {
      return <ReadPageText onClick={this.selectSegment} text={segment.text} segmentId={segment.id} key={index} />

    })
  }

  selectSegment(event){
    console.log('event here', event.props.segmentId)
    this.setState({selectedSegment: event.props.segmentId}, function (){
        console.log('updated state', this.state);
        this.getFeedBack()
      });
    console.log('event state', this.state)
  }

  getFeedBack(){
    const selectedSegmentState = this.state.selectedSegment
    const feedback = this.state.data.segments_feedbacks;
    const segmentFeedback = feedback.find(function(e) {
      return e.find(function(i) {
        return i.segment_id === selectedSegmentState;
      })
    });
    console.log('seg', segmentFeedback);
    this.setState({feedback: segmentFeedback}, function (){
        console.log('updated AGAIN state', this.state);
        this.showFeedBack();
  });
  }

  showFeedBack() {
    if(this.state.feedback){
    const feedback = this.state.feedback;
    return feedback.map((eachFeedBack, index) => {
      return <ReadPageFeedback text= {eachFeedBack.text} created={eachFeedBack.created_at} author={this.state.data.author} />
    })
  }
  }

  handleChange(event) {
    this.setState({text: event.target.value}, function () {
      console.log('textArea Value', this.state.text);
    });
  };

  handleSubmit(event){
    event.preventDefault();

  console.log('handling submit', event.target);
  let text = this.state.text;
  let segment_id = this.state.selectedSegment;

 /*  const params = {
    text: text,
    segment_id: segmentId,
  }; */
  console.log('STATE beofre submit', this.state);
  console.log('so', {text})

  axios.post('http://localhost:3000/api/feedbacks', {text, segment_id})
    .then(res => {
      console.log('post to feedbacks text', res);
      console.log('post to feedbacks 2 text', res.data);
      // this.refreshFeedback(res.data)

  //     this.state = {
  //       data: {
  //       ...this.state.data,
  //       segments_feedbacks: res.data,
  //   },
  // }
  this.refreshFeedback(res.data)
  console.log('PLEASE', this.state)


    });

  }

  handleStoryLike(event){
    event.preventDefault();
    console.log('handling story event', event.target);
    let storyLikes = this.state.data.number_of_likes;
    let story_id = this.state.data.story.id;

    axios.post('http://localhost:3000/api/stories_likes', { story_id })
      .then(res => {
        console.log('post to storyLikes', res);
        console.log('post to storyLikes 2', res.data);
      })
  }


  refreshFeedback(resData){

    const selectedSegmentState = this.state.selectedSegment
    const feedback = this.state.data.segments_feedbacks;
    const segmentFeedback = feedback.find(function(e) {
      return e.find(function(i) {
        return i.segment_id === selectedSegmentState;
      })
    });
    console.log('seg', segmentFeedback);

    console.log('FUCK', segmentFeedback);
    console.log('before', feedback)
    // feedback.splice(segmentFeedback)
    console.log('BULLSHIT', feedback.indexOf(segmentFeedback))
    const index = feedback.indexOf(segmentFeedback)
    feedback.splice(index, 1)

    console.log('lets see', feedback)
    feedback.push(resData);
    console.log('new data', feedback)
        this.state = {
          data: {
          ...this.state.data,
          segments_feedbacks: feedback,
          },
          selectedSegment: this.state.selectedSegment,
          feedback: resData,
          text: this.state.text,

        }
        this.setState({
          data: {
            ...this.state.data
          },
          selectedSegment: this.state.selectedSegment,
          feedback: this.state.feedback,
          text: this.state.text,
        })


  //   this.setState({feedback: segmentFeedback}, function (){
  //       console.log('updated AGAIN state', this.state);
  //       this.showFeedBack();
  // });
  }





  render(){

    return(
      <div className='row'>
        <div className='col-8 test-col'>
          <h5> {this.state.data.author.first_name} {this.state.data.author.last_name} </h5>
            <span className='title-readpage'> {this.state.data.story.title} </span>
            <span className='likes-readpage'>Likes: {this.state.data.number_of_likes.number} </span>
            <button type='submit' onClick={this.handleStoryLike}>Like</button>
            <br />
            <br />
            {this.listOfSegments()}
        </div>
        <div className='col-4 test-col'>
          <form>
            <textarea onChange={this.handleChange}>
            </textarea>
            <br />
            <button type='submit' onClick={this.handleSubmit}>
            Comment
            </button>
          </form>
          <br />
          <br />
        {this.showFeedBack()}
        </div>
      </div>
    )
  }
}

export default ReadPage;