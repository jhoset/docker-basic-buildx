let times = 0;

const syncDB = () => {
    times += 1;
    console.log(`${times} tick after ${times * 5}s ...`);

    return times;
}

module.exports = {
    syncDB: syncDB
}