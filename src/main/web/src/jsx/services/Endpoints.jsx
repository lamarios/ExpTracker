
const API_URL =  '/API';

export const API = {
    CATEGORY: {
        ALL: API_URL + '/Category',
        AVAILABLE: API_URL + '/Category/Available',
        ADD: API_URL + '/Category',
        GET: API_URL + '/Category/ById/{0}',
        DELETE: API_URL + '/Category/{0}',
        SEARCH: API_URL + '/Category/search-icon',
    },
    EXPENSE: {
        ADD: API_URL + '/Expense',
        BY_MONTH: API_URL + '/Expense/ByDay?month={0}',
        GET_MONTHS: API_URL + '/Expense/GetMonths',
        DELETE: API_URL + '/Expense/{0}',
    },
    HISTORY: {
        OVERALL: {
            MONTH: API_URL + "/History/CurrentMonth",
            YEAR: API_URL + "/History/CurrentYear",
        },
        YEARLY: API_URL + "/History/Yearly/{0}/{1}",
        MONTHLY: API_URL + "/History/Monthly/{0}/{1}",
    },
    RECURRING: {
        GET: API_URL + '/RecurringExpense',
        ADD: API_URL + '/RecurringExpense',
        DELETE: API_URL + '/RecurringExpense/{0}'
    },
    SESSION: {
        LOGIN: '/Login'
    },
    SETTINGS: {
        UPDATE: API_URL + '/Setting',
        ALL: API_URL + '/Setting',
        GET: API_URL + '/Setting/{0}',
    },
    UPDATER:{
        INFO: API_URL+"/Updater",
    }

};