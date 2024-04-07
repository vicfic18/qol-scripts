// ==UserScript==
// @name         Marks QOL Improvements
// @namespace    https://vicfic18.github.io/
// @version      2024-04-07
// @description  Adds keyboard shortcuts and shifts layout akin to NTA site.
// @author       Varghese K James
// @match        https://web.getmarks.app/marks-selected/*
// @icon         https://www.google.com/s2/favicons?sz=64&domain=getmarks.app
// @grant        none
// ==/UserScript==

(function () {
    "use strict";
    const maind = document.querySelector("main");
    const header = document.querySelector("header");
    header.parentElement.style.gridTemplateColumns = "75% 25%";
    header.parentElement.style.paddingLeft = "7rem";
    header.parentElement.insertBefore(maind, header);

    document.addEventListener("keypress", (event) => {
        if (event.key === "d") {
            console.log("d pressed.");
            const nextBtn = document.querySelector(".next-btn");
            nextBtn.click();
        } else if (event.key === "a") {
            console.log("a pressed.");
            const prevBtn = document.querySelector(".prev-btn");
            prevBtn.click();
        } else if (event.key === "s") {
            console.log("s pressed.");
            const checkBtn = document.querySelector(".check-btn");
            checkBtn.click();
        }
    });
})();
