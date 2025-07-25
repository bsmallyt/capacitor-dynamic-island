import { DynamicIsland } from 'capacitor-dynamic-island';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    DynamicIsland.echo({ value: inputValue })
}
