const { syncDB } = require("../../tasks/sync-db");


describe('Tests on Sync-DB', () => {
    it('should execute the process 2 times', () => {
        syncDB();
        let times = syncDB();

        expect(times).toBe(2);
    });
})
