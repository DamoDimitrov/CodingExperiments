function TemplateDecorator(template: string, domSelector: string) {
    return function(constructor: any) {
        const domElementUserCard = document.getElementById(domSelector);
        const userCard = new constructor("Stffanie Osterich"
                                                , "Web Developer"
                                                , "Theme, plugin and website development"
                                                , ["Weebly", "Wix"]
                                                , 5.2
                                                , 1.4
                                                , 3.8
                                                , "imgs/panda.webp");
        if(domElementUserCard) {
            domElementUserCard.innerHTML = template;
            domElementUserCard.querySelector("#name span").textContent = userCard.getName();
            domElementUserCard.querySelector("#image img").setAttribute("src", userCard.getPictureURL())
            domElementUserCard.querySelector("#image img").setAttribute("width", "300");
            domElementUserCard.querySelector("#profile span").textContent = userCard.getProfile();
            domElementUserCard.querySelector("#skills span").textContent = userCard.getSkills();
            domElementUserCard.querySelector("#platform span").textContent = userCard.getPlatforms().join(", ");
            domElementUserCard.querySelector("#fans span").textContent = userCard.getFans();
            domElementUserCard.querySelector("#following span").textContent = userCard.getFollowing();
            domElementUserCard.querySelector("#followers span").textContent = userCard.getFollowers();

        }
    }
}

@TemplateDecorator(
    `
    <div>
        <h1 id="name">Name: <span></span></h1>
        <div id="image"><span><img src="" /></span></div>
        <p id="profile">Profile: <span></span></p>
        <p id="skills">Skills: <span></span></p>
        <p id="platform">Platform: <span></span></p>
        <p id="fans">Fans: <span></span></p>
        <p id="following">Following: <span></span></p>
        <p id="followers">Followers: <span></span></p> 
    </div>
    `,
    "userCard"
)

class UserCard {

    constructor(private name: string, private profile: string, private skills: string
        , private platforms: string[], private fans: number,private following: number
        , private followers: number, private pictureURL: string) {}

        getName() {
            return this.name;
        }
        getProfile() {
            return this.profile;
        }
        getSkills() {
            return this.skills;
        }
        getPlatforms() {
            return this.platforms;
        }
        getFans() {
            return this.fans;
        }
        getFollowing() {
            return this.following;
        }
        getFollowers() {
            return this.followers;
        }
        getPictureURL() {
            return this.pictureURL;
        }

}