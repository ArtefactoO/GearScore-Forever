-- Locales.lua - GearScore (Forever)
-- Textes en anglais par défaut, traduits sur les clients frFR et ruRU.
-- NS.L["texte anglais"] renvoie la traduction, ou le texte anglais.
-- La langue se choisit dans les options (auto = langue du client) ; elle
-- est lue à chaque appel, donc valable dès que les variables sont chargées.

local _, NS = ...

local FR, RU = {}, {}
local translations = { frFR = FR, ruRU = RU }

function NS.GetLanguage()
  local lang = GearscoreForeverDB and GearscoreForeverDB.language
  if lang == "enUS" or translations[lang] then return lang end
  local clientLocale = GetLocale()
  return translations[clientLocale] and clientLocale or "enUS"
end

NS.L = setmetatable({}, { __index = function(_, key)
  local locale = translations[NS.GetLanguage()]
  return locale and locale[key] or key
end })

local L = FR

-- Qualité du score
L["Mythic"] = "Mythique"
L["Legendary"] = "Légendaire"
L["Epic"] = "Épique"
L["Superior"] = "Supérieur"
L["Uncommon"] = "Inhabituel"
L["Common"] = "Commun"
L["Poor"] = "Médiocre"

-- Infobulles
L["GearScore (hunter)"] = "GearScore (chasseur)"

-- Chat et commandes
L["v%s loaded. Type /gs for help."] = "v%s chargé. Tapez /gs pour l'aide."
L["%s: %s (%s) - avg iLvl %d"] = "%s : %s (%s) - iLvl moyen %d"
L["v%s - commands:"] = "v%s - commandes :"
L["  /gs  - your GearScore"] = "  /gs  - votre GearScore"
L["  /gs target  - inspect and show your target's GearScore"] = "  /gs target  - inspecte et affiche le GearScore de votre cible"
L["  /gs group (party, raid)  - known GearScores of party / raid members"] = "  /gs group (party, raid)  - GearScores connus du groupe / raid"
L["  /gs config  - open the options window"] = "  /gs config  - ouvre la fenêtre d'options"
L["  /gs options  - show option states"] = "  /gs options  - affiche l'état des options"
L["  /gs <option>  - toggle: "] = "  /gs <option>  - active / désactive : "
L["You are not in a group."] = "Vous n'êtes pas en groupe."
L["Group GearScore:"] = "GearScore du groupe :"
L["  %d member(s) not inspected yet: mouse over them while in range."] = "  %d membre(s) pas encore inspecté(s) : survolez-les à portée."
L["enabled"] = "activé"
L["disabled"] = "désactivé"
L["Target a player."] = "Ciblez un joueur."
L["Cannot inspect (out of range, in combat or too soon)."] = "Inspection impossible (hors de portée, en combat ou trop tôt)."
L["  Automatic color bracket: %d points (best GS seen: %d)"] = "  Palier de couleur automatique : %d points (meilleur GS vu : %d)"

-- Options
L["GearScore in item tooltips"] = "GearScore dans l'infobulle des objets"
L["GearScore in player tooltips"] = "GearScore dans l'infobulle des joueurs"
L["Average item level"] = "Niveau d'objet moyen"
L["Auto-inspect on mouseover"] = "Inspection automatique au survol"
L["GearScore on character sheet"] = "GearScore sur la fiche de personnage"
L["GearScore on inspect window"] = "GearScore sur la fenêtre d'inspection"
L["Enchants next to equipment slots"] = "Enchantements à côté des emplacements"
L["Minimap button"] = "Bouton de la minicarte"

L["Tooltips"] = "Infobulles"
L["Character & inspect"] = "Personnage et inspection"
L["Interface"] = "Interface"
L["Score of the item under the mouse"] = "Score de l'objet sous la souris"
L["Score of players you mouse over"] = "Score des joueurs survolés"
L["Average item level next to the score"] = "Niveau d'objet moyen à côté du score"
L["Inspect players automatically on mouseover"] = "Inspecte automatiquement les joueurs survolés"
L["GS and iLvl under your character model"] = "GS et iLvl sous votre personnage"
L["GS and iLvl in the inspect window"] = "GS et iLvl dans la fenêtre d'inspection"
L["Enchant name next to each equipment slot"] = "Enchantement à côté de chaque emplacement"
L["Show the minimap button"] = "Affiche le bouton de la minicarte"

-- Bouton de la minicarte
L["Click: options"] = "Clic : options"
L["Drag: move"] = "Glisser : déplacer"

-- Choix de la langue
L["Language"] = "Langue"
L["Automatic"] = "Automatique"
L["The interface will reload to apply the language."] = "L'interface va être rechargée pour appliquer la langue."
L["Reload"] = "Recharger"
L["Cancel"] = "Annuler"

L = RU

-- Score quality
L["Mythic"] = "Эпохальный"
L["Legendary"] = "Легендарный"
L["Epic"] = "Эпический"
L["Superior"] = "Редкий"
L["Uncommon"] = "Необычный"
L["Common"] = "Обычный"
L["Poor"] = "Низкий"

-- Tooltips
L["GearScore (hunter)"] = "GearScore (охотник)"

-- Chat and commands
L["v%s loaded. Type /gs for help."] = "Версия %s загружена. Список команд: /gs."
L["%s: %s (%s) - avg iLvl %d"] = "%s: %s (%s), средний ур. предметов %d"
L["v%s - commands:"] = "Команды GearScore v%s:"
L["  /gs  - your GearScore"] = "  /gs — ваш GearScore"
L["  /gs target  - inspect and show your target's GearScore"] = "  /gs target — осмотреть цель и показать ее GearScore"
L["  /gs group (party, raid)  - known GearScores of party / raid members"] = "  /gs group (party, raid) — GearScore осмотренных участников группы или рейда"
L["  /gs config  - open the options window"] = "  /gs config — открыть настройки"
L["  /gs options  - show option states"] = "  /gs options — показать текущие настройки"
L["  /gs <option>  - toggle: "] = "  /gs <параметр> — переключить параметр: "
L["You are not in a group."] = "Вы не в группе."
L["Group GearScore:"] = "GearScore группы:"
L["  %d member(s) not inspected yet: mouse over them while in range."] = "  Еще не осмотрено: %d. Подойдите ближе и наведите на них курсор."
L["enabled"] = "включено"
L["disabled"] = "выключено"
L["Target a player."] = "Выберите игрока."
L["Cannot inspect (out of range, in combat or too soon)."] = "Осмотр недоступен: цель далеко, вы в бою или повторная попытка слишком ранняя."
L["  Automatic color bracket: %d points (best GS seen: %d)"] = "  Шаг цветовой шкалы: %d (наибольший замеченный GS: %d)"

-- Options
L["GearScore in item tooltips"] = "GearScore в подсказках предметов"
L["GearScore in player tooltips"] = "GearScore в подсказках игроков"
L["Average item level"] = "Средний уровень предметов"
L["Auto-inspect on mouseover"] = "Автоосмотр при наведении"
L["GearScore on character sheet"] = "GearScore в окне персонажа"
L["GearScore on inspect window"] = "GearScore в окне осмотра"
L["Enchants next to equipment slots"] = "Чары рядом с ячейками экипировки"
L["Minimap button"] = "Кнопка у мини-карты"
L["Tooltips"] = "Подсказки"
L["Character & inspect"] = "Персонаж и осмотр"
L["Interface"] = "Интерфейс"
L["Score of the item under the mouse"] = "GearScore предмета под курсором"
L["Score of players you mouse over"] = "GearScore игрока под курсором"
L["Average item level next to the score"] = "Средний уровень предметов рядом с GS"
L["Inspect players automatically on mouseover"] = "Осматривать игроков под курсором"
L["GS and iLvl under your character model"] = "GS и уровень предметов под персонажем"
L["GS and iLvl in the inspect window"] = "GS и уровень предметов при осмотре"
L["Enchant name next to each equipment slot"] = "Названия чар у ячеек экипировки"
L["Show the minimap button"] = "Показать кнопку у мини-карты"

-- Minimap
L["Click: options"] = "Щелчок: настройки"
L["Drag: move"] = "Перетащите, чтобы переместить"

-- Language
L["Language"] = "Язык"
L["Automatic"] = "Авто"
L["The interface will reload to apply the language."] = "Чтобы сменить язык, нужно перезагрузить интерфейс."
L["Reload"] = "Перезагрузить"

-- Theme
L["Cancel"] = "Отмена"
