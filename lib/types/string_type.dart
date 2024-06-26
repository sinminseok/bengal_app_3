enum LanguageType {
  eng,
  kor,
}

enum UiStringType {
  none,
  TOKEN_NAME_01,
  TOKEN_NAME_02,
  TOKEN_NAME_03,
  TOKEN_NAME_04,
  STATUS_NAME_01,
  STATUS_NAME_02,
  STATUS_NAME_03,
  STATUS_NAME_04,
  CAR_TYPE_01,
  CAR_TYPE_02,
  CAR_TYPE_03,
  CAR_TYPE_04,
  CAR_GRADE_01,
  CAR_GRADE_02,
  CAR_GRADE_03,
  CAR_GRADE_04,
  CAR_GRADE_05,
  CARBOX_GRADE_01,
  CARBOX_GRADE_02,
  CARBOX_GRADE_03,
  CARBOX_GRADE_04,
  CARBOX_GRADE_05,
  TOP_MENU_01,
  TOP_MENU_02,
  BOTTOM_NAVIGATION_01,
  BOTTOM_NAVIGATION_02,
  BOTTOM_NAVIGATION_03,
  BOTTOM_NAVIGATION_04,
  BOTTOM_NAVIGATION_05,
  TOAST_MESSAGE_01,
  TOAST_MESSAGE_02,
  TOAST_MESSAGE_03,
  TOAST_MESSAGE_04,
  TOAST_MESSAGE_05,
  TOAST_MESSAGE_06,
  TOAST_MESSAGE_07,
  TOAST_MESSAGE_08,
  TOAST_MESSAGE_09,
  TOAST_MESSAGE_10,
  TOAST_MESSAGE_11,
  TOAST_MESSAGE_12,
  TOAST_MESSAGE_13,
  TOAST_MESSAGE_14,
  TOAST_MESSAGE_15,
  TOAST_MESSAGE_16,
  TOAST_MESSAGE_17,
  LOGIN_01,
  LOGIN_02,
  LOGIN_03,
  LOGIN_04,
  LOGIN_05,
  LOGIN_06,
  LOGIN_07,
  LOGIN_08,
  LOGIN_09,
  LOGIN_10,
  LOGIN_11,
  LOGIN_12,
  LOGIN_13,
  CAR_MILEAGE_STATE_01,
  CAR_MILEAGE_STATE_02,
  CAR_MILEAGE_STATE_03,
  LOBBY_CAR_01,
  LOBBY_CAR_02,
  LOBBY_CAR_03,
  LOBBY_CAR_04,
  LOBBY_TAB_01,
  LOBBY_TAB_02,
  LOBBY_TAB_03,
  LOBBY_TAB_04,
  LOBBY_TAB_05,
  LOBBY_TAB_06,
  LOBBY_TAB_07,
  LOBBY_SPECIALBOX_01,
  LOBBY_SPECIALBOX_02,
  LOBBY_SPECIALBOX_03,
  LOBBY_SPECIALBOX_04,
  LOBBY_SPECIALBOX_05,
  LOBBY_SPECIALBOX_OPEN_01,
  LOBBY_SPECIALBOX_OPEN_02,
  LOBBY_SPECIALBOX_OPEN_03,
  LOBBY_SPECIALBOX_OPEN_04,
  LOBBY_SPECIALBOX_OPEN_05,
  LOBBY_SPECIALBOX_OPEN_06,
  LOBBY_SPECIALBOX_OPEN_07,
  LOBBY_GAMEPLAY_01,
  LOBBY_GAMEPLAY_02,
  LOBBY_GAMEPLAY_03,
  LOBBY_GAMEPLAY_04,
  INVENTORY_TABNAME_01,
  INVENTORY_TABNAME_02,
  INVENTORY_TABNAME_03,
  INVENTORY_TABNAME_04,
  INVENTORY_TAB_CARS_SORT_01,
  INVENTORY_TAB_CARS_SORT_02,
  INVENTORY_TAB_CARS_SORT_03,
  INVENTORY_TAB_CARS_SORT_04,
  INVENTORY_TAB_CARS_FILTER_01,
  INVENTORY_TAB_CARS_FILTER_02,
  INVENTORY_TAB_CARS_FILTER_03,
  INVENTORY_TAB_CARS_FILTER_04,
  INVENTORY_TAB_CARS_FILTER_05,
  INVENTORY_TAB_CARS_FILTER_06,
  INVENTORY_TAB_CARS_FILTER_07,
  INVENTORY_TAB_CARS_FILTER_08,
  INVENTORY_TAB_CARS_FILTER_09,
  INVENTORY_TAB_CARS_FILTER_10,
  INVENTORY_TAB_CARS_FILTER_11,
  INVENTORY_TAB_CARS_FILTER_12,
  INVENTORY_TAB_CARS_FILTER_13,
  INVENTORY_TAB_CARS_FILTER_14,
  INVENTORY_TAB_CARS_FILTER_15,
  INVENTORY_TAB_CARS_01,
  INVENTORY_TAB_CARS_02,
  INVENTORY_TAB_CARS_03,
  INVENTORY_CARBOX_OPEN_01,
  INVENTORY_CARBOX_OPEN_02,
  INVENTORY_CARBOX_OPEN_03,
  INVENTORY_CARBOX_OPEN_04,
  INVENTORY_CARBOX_OPEN_05,
  INVENTORY_CARBOX_OPEN_06,
  INVENTORY_CARBOX_OPEN_07,
  INVENTORY_CARBOX_OPEN_08,
  WORKSHOP_TABNAME_01,
  WORKSHOP_TABNAME_02,
  WORKSHOP_TABNAME_03,
  WORKSHOP_TAB_MINT_SORT_01,
  WORKSHOP_TAB_MINT_SORT_02,
  WORKSHOP_TAB_MINT_SORT_03,
  WORKSHOP_TAB_MINT_SORT_04,
  WORKSHOP_TAB_MINT_FILTER_01,
  WORKSHOP_TAB_MINT_FILTER_02,
  WORKSHOP_TAB_MINT_FILTER_03,
  WORKSHOP_TAB_MINT_FILTER_04,
  WORKSHOP_TAB_MINT_FILTER_05,
  WORKSHOP_TAB_MINT_FILTER_06,
  WORKSHOP_TAB_MINT_FILTER_07,
  WORKSHOP_TAB_MINT_FILTER_08,
  WORKSHOP_TAB_MINT_FILTER_09,
  WORKSHOP_TAB_MINT_FILTER_10,
  WORKSHOP_TAB_MINT_FILTER_11,
  WORKSHOP_TAB_MINT_FILTER_12,
  WORKSHOP_TAB_MINT_FILTER_13,
  WORKSHOP_TAB_MINT_FILTER_14,
  WORKSHOP_TAB_MINT_FILTER_15,
  WORKSHOP_TAB_MINT_01,
  WORKSHOP_TAB_MINT_02,
  WORKSHOP_TAB_MINT_03,
  WORKSHOP_TAB_MINT_04,
  WORKSHOP_TAB_MINT_05,
  WORKSHOP_TAB_MINT_06,
  WORKSHOP_TAB_MINT_07,
  MARKET_TABNAME_01,
  MARKET_TABNAME_02,
  MARKET_TABNAME_03,
  MARKET_TABNAME_04,
  MARKET_TAB_CARS_SORT_01,
  MARKET_TAB_CARS_SORT_02,
  MARKET_TAB_CARS_SORT_03,
  MARKET_TAB_CARS_SORT_04,
  MARKET_TAB_CARS_FILTER_01,
  MARKET_TAB_CARS_FILTER_02,
  MARKET_TAB_CARS_FILTER_03,
  MARKET_TAB_CARS_FILTER_04,
  MARKET_TAB_CARS_FILTER_05,
  MARKET_TAB_CARS_FILTER_06,
  MARKET_TAB_CARS_FILTER_07,
  MARKET_TAB_CARS_FILTER_08,
  MARKET_TAB_CARS_FILTER_09,
  MARKET_TAB_CARS_FILTER_10,
  MARKET_TAB_CARS_FILTER_11,
  MARKET_TAB_CARS_FILTER_12,
  MARKET_TAB_CARS_FILTER_13,
  MARKET_TAB_CARS_FILTER_14,
  MARKET_TAB_CARS_FILTER_15,
  MARKET_TAB_CARS_01,
  MARKET_TAB_CARS_BUYPOPUP_01,
  MARKET_TAB_CARS_BUYPOPUP_02,
  MARKET_TAB_CARS_BUYPOPUP_03,
  MARKET_TAB_CARS_BUYPOPUP_04,
  MARKET_TAB_CARS_BUYPOPUP_05,
  MARKET_TAB_CARS_BUYPOPUP_06,
  MARKET_TAB_CARS_BUYPOPUP_07,
  CAR_INFO_01,
  CAR_INFO_02,
  CAR_INFO_03,
  CAR_INFO_04,
  CAR_INFO_05,
  CAR_INFO_06,
  CAR_INFO_07,
  CAR_INFO_08,
  CAR_INFO_09,
  CAR_INFO_10,
  CAR_INFO_11,
  CAR_INFO_BOTTOM_MENU_01,
  CAR_INFO_BOTTOM_MENU_02,
  CAR_INFO_BOTTOM_MENU_03,
  CAR_INFO_BOTTOM_MENU_04,
  CAR_INFO_BOTTOM_MENU_05,
  CAR_INFO_BOTTOM_MENU_06,
  CAR_INFO_ADDSTATUS_POPUP_01,
  CAR_INFO_ADDSTATUS_POPUP_02,
  CAR_INFO_ADDSTATUS_POPUP_03,
  CAR_INFO_LEVELUP_POPUP_01,
  CAR_INFO_LEVELUP_POPUP_02,
  CAR_INFO_LEVELUP_POPUP_03,
  CAR_INFO_LEVELUP_POPUP_04,
  CAR_INFO_LEVELUP_POPUP_05,
  CAR_INFO_LEVELUP_POPUP_06,
  CAR_INFO_LEVELUP_POPUP_07,
  CAR_INFO_LEVELUP_POPUP_08,
  CAR_INFO_LEVELUP_POPUP_09,
  CAR_INFO_LEVELUP_POPUP_10,
  CAR_INFO_REPAIR_POPUP_01,
  CAR_INFO_REPAIR_POPUP_02,
  CAR_INFO_REPAIR_POPUP_03,
  CAR_INFO_REPAIR_POPUP_04,
  CAR_INFO_REPAIR_POPUP_05,
  CAR_INFO_SELL_POPUP_01,
  CAR_INFO_SELL_POPUP_02,
  CAR_INFO_SELL_POPUP_03,
  CAR_INFO_SELL_POPUP_04,
  CAR_INFO_SELL_POPUP_05,
  CAR_INFO_SELL_POPUP_06,
  CAR_INFO_SELL_POPUP_07,
  CAR_INFO_SELL_POPUP_08,
  CAR_INFO_SELL_POPUP_09,
  CAR_INFO_SELL_POPUP_10,
  CAR_INFO_SELL_POPUP_11,
  CAR_INFO_SELL_POPUP_12,
  CAR_INFO_SELL_POPUP_13,
  CAR_INFO_SELL_POPUP_14,
  CAR_INFO_SELL_POPUP_15,
  PLAY_INFO_01,
  PLAY_INFO_02,
  PLAY_INFO_03,
  PLAY_INFO_04,
  PLAY_INFO_05,
  PLAY_INFO_06,
  PLAY_INFO_07,
  PLAY_INFO_RESULT_01,
  PLAY_INFO_RESULT_02,
  PLAY_INFO_RESULT_03,
  PLAY_INFO_RESULT_04,
  PLAY_INFO_RESULT_05,
  PLAY_INFO_RESULT_06,
  PLAY_INFO_RESULT_07,
  PLAY_INFO_RESULT_08,
  PLAY_INFO_RESULT_09,
  PLAY_INFO_RESULT_10,
  TOKENMANAGEMENT_TABNAME_01,
  TOKENMANAGEMENT_TABNAME_02,
  TOKENMANAGEMENT_TAB_SPENDING_01,
  TOKENMANAGEMENT_TAB_SPENDING_02,
  TOKENMANAGEMENT_TAB_SPENDING_03,
  TOKENMANAGEMENT_TAB_SPENDING_04,
  TOKENMANAGEMENT_TAB_SPENDING_05,
  TOKENMANAGEMENT_TAB_SPENDING_06,
  TOKENMANAGEMENT_TAB_SPENDING_07,
  TOKENMANAGEMENT_TAB_SPENDING_08,
  TOKENMANAGEMENT_TAB_SPENDING_09,
  TOKENMANAGEMENT_TAB_SPENDING_10,
  TOKENMANAGEMENT_TAB_SPENDING_11,
  TOKENMANAGEMENT_TAB_WALLET_01,
  TOKENMANAGEMENT_TAB_WALLET_02,
  TOKENMANAGEMENT_TAB_WALLET_03,
  TOKENMANAGEMENT_TAB_WALLET_04,
  TOKENMANAGEMENT_TAB_WALLET_05,
  TOKENMANAGEMENT_TAB_WALLET_06,
  TOKENMANAGEMENT_TAB_WALLET_07,
  TOKENMANAGEMENT_TAB_WALLET_08,
  TOKENMANAGEMENT_TAB_WALLET_09,
  TOKENMANAGEMENT_TAB_WALLET_10,
  TOKENMANAGEMENT_TAB_WALLET_11,
  TOKENMANAGEMENT_TAB_WALLET_12,
  TOKENMANAGEMENT_TAB_WALLET_13,
  TOKENMANAGEMENT_TAB_WALLET_14,
  TOKENMANAGEMENT_PASSWORD_01,
  TOKENMANAGEMENT_PASSWORD_02,
  TOKENMANAGEMENT_PASSWORD_03,
  TOKENMANAGEMENT_TRANSFER_01,
  TOKENMANAGEMENT_TRANSFER_02,
  TOKENMANAGEMENT_TRANSFER_03,
  TOKENMANAGEMENT_TRANSFER_04,
  TOKENMANAGEMENT_TRANSFER_05,
  TOKENMANAGEMENT_TRANSFER_06,
  TOKENMANAGEMENT_TRANSFER_07,
  TOKENMANAGEMENT_TRANSFER_08,
  TOKENMANAGEMENT_TRANSFER_09,
  TOKENMANAGEMENT_TRANSFER_10,
  TOKENMANAGEMENT_TRANSFER_11,
  TOKENMANAGEMENT_TRANSFER_TOKENSELECT_01,
  TOKENMANAGEMENT_TRANSFER_TOKENSELECT_02,
  TOKENMANAGEMENT_TRANSFER_TOKENSELECT_03,
  TOKENMANAGEMENT_TRANSFER_POPUP_01,
  TOKENMANAGEMENT_TRANSFER_POPUP_02,
  TOKENMANAGEMENT_TRANSFER_POPUP_03,
  TOKENMANAGEMENT_TRANSFER_POPUP_04,
  TOKENMANAGEMENT_TRANSFER_POPUP_05,
  TOKENMANAGEMENT_TRANSFER_POPUP_06,
  TOKENMANAGEMENT_TRANSFER_POPUP_07,
  TOKENMANAGEMENT_TRADE_01,
  TOKENMANAGEMENT_TRADE_02,
  TOKENMANAGEMENT_TRADE_03,
  TOKENMANAGEMENT_TRADE_04,
  TOKENMANAGEMENT_TRADE_05,
  TOKENMANAGEMENT_TRADE_06,
  TOKENMANAGEMENT_TRADE_07,
  TOKENMANAGEMENT_TRADE_08,
  TOKENMANAGEMENT_TRADE_POPUP_01,
  TOKENMANAGEMENT_TRADE_POPUP_02,
  TOKENMANAGEMENT_TRADE_POPUP_03,
  TOKENMANAGEMENT_TRADE_POPUP_04,
  TOKENMANAGEMENT_TRADE_POPUP_05,
  TOKENMANAGEMENT_SLIPPAGE_POPUP_01,
  TOKENMANAGEMENT_SLIPPAGE_POPUP_02,
  TOKENMANAGEMENT_SLIPPAGE_POPUP_03,
  TOKENMANAGEMENT_SLIPPAGE_POPUP_04,
}
