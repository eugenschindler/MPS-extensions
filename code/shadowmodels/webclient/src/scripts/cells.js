

window.onload = () => {

    class Caret {

        constructor() {
            this.dom = document.createElement("div");
            this.dom.classList.add("caret");
            const viewer = document.getElementsByClassName("viewer").item(0);
            viewer.appendChild(this.dom);
        }

        show(textCell, pos) {
            this.dom.style.display = "block";
            const rect = absoluteBounds(textCell);
            let x = caretToX(textCell, pos);
            this.dom.style.left = x + "px";
            this.dom.style.top = rect.y + "px";
            this.dom.style.height = rect.height + "px";
        }

        hide() {
            this.dom.style.display = "none";
        }
    }
    const caretInstance = new Caret();

    const socket = new WebSocket("ws://localhost:2810/");
    const messageHandlers = {
        caret: (message) => {
            caretInstance.show(document.getElementById(message.elementId), message.pos);
        },
    };

    socket.onmessage = (event) => {
        const message = JSON.parse(event.data);
        const handler = messageHandlers[message.type];
        if (handler) {
            handler(message);
        }
    };

    for (const textCell of document.getElementsByClassName("textCell")) {
        textCell.addEventListener("click", (event) => {
            socket.send(JSON.stringify({
                type: "click",
                elementId: textCell.id,
                x: event.x - textCell.getBoundingClientRect().x,
                y: event.y - textCell.getBoundingClientRect().y,
                pos: xToCaret(textCell, event.x - document.body.getBoundingClientRect().left)
            }));
        });
    }

    for (const viewer of document.getElementsByClassName("viewer")) {
        viewer.style.backgroundColor = "#ddd";
        viewer.style.position = "relative";
    }
};

function xToCaret(textCell, x) {
    const bounds = absoluteBounds(textCell);
    let left = bounds.x;
    let width = bounds.width;
    let right = left + width;

    let numChars = textCell.innerText.length;
    if (x <= left) return 0;
    if (x >= right) return numChars;

    let c = Math.round(numChars * (x - left) / width);
    let c1 = 0;
    let c2 = numChars;
    while (c2 - c1 > 1) {
        if (caretToX(textCell, c) < x) {
            c1 = c;
        } else {
            c2 = c;
        }
        c = Math.round((c2 + c1) / 2);
    }
    return this.distanceToCaret(textCell, c1, x) < this.distanceToCaret(textCell, c2, x) ? c1 : c2;
}

function caretToX(textCell, caretPos) {
    let textNode = textCell.firstChild;
    if (!textNode) {
        return absoluteBounds(textCell).x;
    }
    let maxPos = textNode.textContent ? textNode.textContent.length - 1 : 0;
    caretPos = Math.min(maxPos + 1, caretPos);
    if (caretPos < 0 || caretPos > maxPos) {
        return absoluteBounds(textCell).right;
    }
    else {
        let range = document.createRange();
        range.setStart(textNode, caretPos);
        range.setEndAfter(textNode);
        return absoluteBounds(range).x;
    }
}

function distanceToCaret(textCell, caretPos, x) {
    return Math.abs(caretToX(textCell, caretPos) - x);
}

function absoluteBounds(element) {
    const bodyRect = document.body.getBoundingClientRect();
    const elemRect = element.getBoundingClientRect();
    let x = elemRect.left - bodyRect.left;
    let y = elemRect.top - bodyRect.top;
    return {
        x: x,
        y: y,
        left: x,
        top: y,
        right: x + elemRect.width,
        bottom: y + elemRect.height,
        width: elemRect.width,
        height: elemRect.height
    };
}