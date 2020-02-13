import React from "react"

export  default class Home extends React.Component{
    render(){
        return(
            <div>
                <ul>
                    <li>
                        <a href="register">register</a>
                    </li>
                    <li>
                        <a href="login">login</a>
                    </li>
                </ul>
            </div>
        )
    }
}