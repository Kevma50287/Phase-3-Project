import logo from "./logos/largerIcon.png"
import check from "./logos/check.png"
import "./WelcomePage.css"
const WelcomePage = () => {
    const welcomeArr = ["Create your own calendar and logo.", "Collaborate with your team", "Track goals and meet deadlines"]
    const returnWelcomeArr = welcomeArr.map((element)=>(
        <div className = "listGroup">
            <div className = "checkMark"><img src = {check} alt = "check"></img></div>
            <div className = "listGroupElement"><h4>{element}</h4></div>
        </div>
    ))
    return (<>
    <div>
        <div id = "logoHolder" className = "logo">
            <img className= "logoHolder" src = {logo} alt = "something" height= "100px"></img>
        </div>
        <div id = "nameHolder" className = "logo">
            <h1 id = "name">DoWork</h1>
        </div>
    </div>

    <div id = "Body">
        <div id = "largeMotto">
            <h2>Your time-management tools,
            <br />all in one place.</h2>
        </div>
        <div id = "descriptiveMotto">
            <p className = "missionStatement">
                DoWork allows you and/or your team to make the most of your
                <br /> time, by providing you a single space to handle planning, tracking,
                <br />and coordinating.
            </p>
        </div>
        <div id = "welcomeList">
        {returnWelcomeArr}
        </div>
        <div>
            <button className = "signUpBtn">Sign Up</button>
        </div>
        <div>
            <p><u>Already signed up? Login</u></p>
        </div>
    </div>
    </>)
}

export default WelcomePage