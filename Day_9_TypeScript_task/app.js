var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
function TemplateDecorator(template, domSelector) {
    return function (constructor) {
        const domElementUserCard = document.getElementById(domSelector);
        const userCard = new constructor("Stffanie Osterich", "Web Developer", "Theme, plugin and website development", ["Weebly", "Wix"], 5.2, 1.4, 3.8, "imgs/panda.webp");
        if (domElementUserCard) {
            domElementUserCard.innerHTML = template;
            domElementUserCard.querySelector("#name span").textContent = userCard.getName();
            domElementUserCard.querySelector("#image img").setAttribute("src", userCard.getPictureURL());
            domElementUserCard.querySelector("#image img").setAttribute("width", "300");
            domElementUserCard.querySelector("#profile span").textContent = userCard.getProfile();
            domElementUserCard.querySelector("#skills span").textContent = userCard.getSkills();
            domElementUserCard.querySelector("#platform span").textContent = userCard.getPlatforms().join(", ");
            domElementUserCard.querySelector("#fans span").textContent = userCard.getFans();
            domElementUserCard.querySelector("#following span").textContent = userCard.getFollowing();
            domElementUserCard.querySelector("#followers span").textContent = userCard.getFollowers();
        }
    };
}
let UserCard = class UserCard {
    constructor(name, profile, skills, platforms, fans, following, followers, pictureURL) {
        this.name = name;
        this.profile = profile;
        this.skills = skills;
        this.platforms = platforms;
        this.fans = fans;
        this.following = following;
        this.followers = followers;
        this.pictureURL = pictureURL;
    }
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
};
UserCard = __decorate([
    TemplateDecorator(`
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
    `, "userCard")
], UserCard);
