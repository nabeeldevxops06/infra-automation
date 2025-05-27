import React from "react";
import profile from "./profile.JPG";

function AiTwotoneMail(props) {
  return <svg stroke="currentColor" fill="currentColor" strokeWidth={0} viewBox="0 0 1024 1024" height="1em" width="1em" {...props}><path d="M477.5 536.3L135.9 270.7l-27.5-21.4 27.6 21.5V792h752V270.8L546.2 536.3a55.99 55.99 0 0 1-68.7 0z" /><path d="M876.3 198.8l39.3 50.5-27.6 21.5 27.7-21.5-39.3-50.5z" /><path d="M928 160H96c-17.7 0-32 14.3-32 32v640c0 17.7 14.3 32 32 32h832c17.7 0 32-14.3 32-32V192c0-17.7-14.3-32-32-32zm-94.5 72.1L512 482 190.5 232.1h643zm54.5 38.7V792H136V270.8l-27.6-21.5 27.5 21.4 341.6 265.6a55.99 55.99 0 0 0 68.7 0L888 270.8l27.6-21.5-39.3-50.5h.1l39.3 50.5-27.7 21.5z" /></svg>;
}

function MailTo({email, subject= '', body = '', children}) {
    let params = subject || body ? '?' : '';
  if (subject) params += `subject=${encodeURIComponent(subject)}`;
  if (body) params += `${subject ? '&' : ''}body=${encodeURIComponent(body)}`;

  return <a href={`mailto:${email}${params}`} className="mail">{children}</a>;
}

function FaLinkedin(props) {
  return <svg stroke="currentColor" fill="currentColor" strokeWidth={0} viewBox="0 0 448 512" height="1em" width="1em" {...props}><path d="M416 32H31.9C14.3 32 0 46.5 0 64.3v383.4C0 465.5 14.3 480 31.9 480H416c17.6 0 32-14.5 32-32.3V64.3c0-17.8-14.4-32.3-32-32.3zM135.4 416H69V202.2h66.5V416zm-33.2-243c-21.3 0-38.5-17.3-38.5-38.5S80.9 96 102.2 96c21.2 0 38.5 17.3 38.5 38.5 0 21.3-17.2 38.5-38.5 38.5zm282.1 243h-66.4V312c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9V416h-66.4V202.2h63.7v29.2h.9c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9V416z" /></svg>;
}

export default function Profile() {
    return (
        <>
            <img className="image" src={profile} alt="Yiye"/>
            <section className="profile_section">
                <h3 className="name">Fang Yiye</h3>
                <p className="title">University Student</p>
                <div className="email">
                    <MailTo
                    email = 'yiyefangfyy@gmail.com'
                    subject = 'hi'
                    body= 'Hey!'
                    className = 'mailto'>
                        <AiTwotoneMail className="icon"/>
                        <span className="email_text">Email</span>
                    </MailTo>
                    <a
                    href="https://www.linkedin.com/in/yiye-fang-b8689a289/"
                    target="_"
                    rel="_"
                    >
                        <FaLinkedin className="l_icon"/>
                        <span className="l_text">Linkedin</span>
                    </a>
                </div>
            </section>
        </>
    );
}