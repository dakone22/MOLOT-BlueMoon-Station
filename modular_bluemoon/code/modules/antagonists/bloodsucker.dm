/datum/action/bloodsucker/tutorial
	name = "Обратиться к инстинктам"
	desc = "Прислушаться ко внутренним ощущениям и постараться понять, что нужно делать (обучение)"
	icon_icon = 'modular_bluemoon/icons/mob/actions/bloodsucker.dmi' //This is the file for the ACTION icon
	button_icon = 'modular_bluemoon/icons/mob/actions/bloodsucker.dmi' //This is the file for the BACKGROUND icon
	button_icon_state = "tutorial"
	bloodcost = 0
	cooldown = 200
	bloodsucker_can_buy = TRUE

/datum/action/bloodsucker/tutorial/CheckCanUse(display_error)
	. = ..()
	if(!.)
		return

	return TRUE

/datum/action/bloodsucker/tutorial/ActivatePower()
	var/bloodsucker_tutorial
	bloodsucker_tutorial += span_userdanger("<br><center>Добро пожаловать в ночь, неонат</center><br>")
	bloodsucker_tutorial += span_danger("* Ты - проклятый Богом и обречён на питание кровью живых существ, поглощая их силу, чтобы продлить своё существование.<br>")
	bloodsucker_tutorial += span_danger("* Ты больше не хочешь есть. Ты не хочешь пить. Ты не хочешь спать. Перед тобой бесконечность, в которой ожидает лишь набирание силы.<br>")
	bloodsucker_tutorial += span_danger("* Это твоя новая не-жизнь.<br>")
	bloodsucker_tutorial += span_userdanger("<br><center>С чего начать?</center><br>")
	bloodsucker_tutorial += span_danger("* Стоит найти место для будущего логова и собрать либо из железа, либо из дерева гроб. В этом месте в будущем будут и другие твои вещи.<br>")
	bloodsucker_tutorial += span_danger("* Чтобы разметить область как своё убежище, нужно лечь и закрыть в гроб. После этого, логово нельзя будет изменить.<br>")
	bloodsucker_tutorial += span_danger("* К подбору места стоит подойти основательно. Самые находчивые (и скучные) офицеры охраны, а также зеваки могут найти логово и поджидать, когда туда вернутся.<br>")
	bloodsucker_tutorial += span_userdanger("<br><center>Маскарад</center><br>")
	bloodsucker_tutorial += span_danger("* Ты уже не живёшь. Сердце не бьётся, а тело, как правило, не теплее воздуха вокруг тебя. И самое ужасное - постоянная бледность.<br>")
	bloodsucker_tutorial += span_danger("* Чтобы скрыть особенности своей не-жизни, необходимо тратить немного крови, чтобы поддерживать состояние маскарада. Это имитация жизненных особенностей смертных.<br>")
	bloodsucker_tutorial += span_danger("* Ты снова сможешь: есть (пускай и не без отвращения), дышать, заболевать (с излечением в случае сброса маскарада). Твоё сердце вновь начнёт биться в унисон с чужими.<br>")
	bloodsucker_tutorial += span_danger("* Современная техника не отличит тебя от обычного человека, показывая уместный (а не твой реальный) уровень крови, а также останавливая усиленную регенерацию.<br>")
	bloodsucker_tutorial += span_userdanger("<br><center>Логово, гроб, цикл</center><br>")
	bloodsucker_tutorial += span_danger("* Этот сектор обладает особой энергией. Благодаря ей, можно повышать своё могущество не с помощью десятков лет выживания, тратя на это значительно меньше времени.<br>")
	bloodsucker_tutorial += span_danger("* Есть лечь в гроб, когда тело изранено, то впадёшь в углубленный сон, чтобы быстро восстановиться от ран. Это называется торпором.<br>")
	bloodsucker_tutorial += span_danger("* Твой гроб, алтарь и кандилябр могут быть замаскированы с помощью Ctrl+Shift+Click. Пользуйся этим, чтобы скрываться ещё лучше.<br>")
	bloodsucker_tutorial += span_userdanger("<br><center>Поколения</center><br>")
	bloodsucker_tutorial += span_danger("* Поколение можно повышать с каждым прожитым днём. Для этого требуется лечь в гроб и закрыть его.<br>")
	bloodsucker_tutorial += span_danger("* Чем выше поколение...<br>")
	bloodsucker_tutorial += span_danger("* ... Тем больше смертных ты можешь подчинить своей воле.<br>")
	bloodsucker_tutorial += span_danger("* ... Тем сильнее сильнее становятся твои способности. Например, питаться становится проще, а стойкость позволяет выдерживать больше повреждений.<br>")
	bloodsucker_tutorial += span_danger("* ... Тем больше повреждений ты можешь вынести (на 10% за каждое). Регенерация также становится слегка лучше.<br>")
	bloodsucker_tutorial += span_danger("* ... Тем сильнее твои руки, оставляя чуть более глубокие раны.<br>")
	bloodsucker_tutorial += span_danger("* ... Тем больше тело способно накапливать крови..<br>")
	bloodsucker_tutorial += span_danger("* ... Тем больше крови требуется для каждого последующего повышения.<br>")
	bloodsucker_tutorial += span_danger("* ... Тем сильнее твоя кожа будет гореть под излучением звёзд. Все окружающие заметят, что даже будучи ничтожным неонатом, на тебе внезапно появляются ожоги. Если же ты более древний, то начнёшь гореть.<br>")
	bloodsucker_tutorial += span_userdanger("<br><center>Торпор</center><br>")
	bloodsucker_tutorial += span_danger("* Ты больше не живое существо. Ты можешь сражаться и отступать даже после таких ран, которые давно убили бы смертного или повалили с ног.<br>")
	bloodsucker_tutorial += span_danger("* Бессмертие требует, чтобы тело существовало. Потому, получив слишком много повреждений (как когда твоя еда умирает), наступает состояние торпора. Это почти смерть, за исключением, что твоё тело будет регенерировать, со временем позволяя полностью восстановиться.<br>")
	bloodsucker_tutorial += span_danger("* Пока ты в состоянии торпора, твоя кровь не тратится. Способности не работают, за исключением маскарада - можно притворяться полноценным трупом, а не постепенно регенерировать на чужих глазах.<br>")
	bloodsucker_tutorial += span_danger("* Если лечь в гроб с ранами или во время излучения, то тоже окажешься в торпоре, пока раны не исчезнут или вспышка не закончится.<br>")
	bloodsucker_tutorial += span_danger("* Если пока ты в торпоре в груди окажется кол, твоя не-жизнь подойдёт к концу.<br>")
	bloodsucker_tutorial += span_userdanger("<br><center>Зверь</center><br>")
	bloodsucker_tutorial += span_danger("* Неутолимый, вечный голод - это не эфмирное проклятие.<br>")
	bloodsucker_tutorial += span_danger("* Существо, которое живёт внутри тебя и отвечает за выживание, хочет только есть и спать днём. Если не давать ему еду, оно перехватит контроль над тобой.<br>")
	bloodsucker_tutorial += span_danger("* В состоянии зверя, как его описывают, красная пелена застелает глаза, а всё, о чём можно думать - это утоление голода.<br>")
	bloodsucker_tutorial += span_danger("* Известно, что если посадить сородича на цепь и он будет биться в своих оковах, то либо вырвет себе конечности и всё-таки сожрёт кого-нибудь, либо рассыпется в пепел.<br>")
	bloodsucker_tutorial += span_userdanger("<br><center>Кормление, охота и скот</center><br>")
	bloodsucker_tutorial += span_danger("* Твоя прошлая жизнь окончена. Ты уже не являешься тем, кем был раньше. С этого момента, те, кто когда-то был сородичем, становятся для тебя едой и скотом.<br>")
	bloodsucker_tutorial += span_danger("* Ты должен пить кровь, чтобы продлевать своё существование, использовать свои особые способности и регенерировать раны.<br>")
	bloodsucker_tutorial += span_danger("* Ничто из того, чем ты обладаешь сейчас, недоступно тем, кто когда-то был тебе братом или сестрой. Ты уже выше их и не должен ассоциировать себя с ними.<br>")
	bloodsucker_tutorial += span_danger("* Существует два вида кормления - скрытое и явное.<br>")
	bloodsucker_tutorial += span_danger("* Для скрытого, достаточно стоять рядом с жертвой и активировать способность. В запястье еды будут введены клыки, позволяя незаметно для неё питаться.<br>")
	bloodsucker_tutorial += span_danger("* Если кто-то стоит на расстоянии двух метров в момент начала, то они заметят, что ты кормишься.<br>")
	bloodsucker_tutorial += span_danger("* Кормление прервётся, если ты или жертва переместятся. Если оно было незаметным, то еда и окружающие ничего не заметят по прекращению.<br>")
	bloodsucker_tutorial += span_danger("* Для явного кормления нужно схватить и крепко держать. От него жертва сразу же уснёт - она даже не заметит, что у тебя вышли клыки из пасти. Оно быстрее скрытого.<br>")
	bloodsucker_tutorial += span_danger("* При явном варианте, жертва также будет в состоянии, близком к оргазму. Укус очень приятен.<br>")
	bloodsucker_tutorial += span_danger("* В обоих случаях, жертва не будет помнить факта кормежки.<br>")
	bloodsucker_tutorial += span_userdanger("<br><center>Как пережить очередную ночь</center><br>")
	bloodsucker_tutorial += span_danger("* Первым делом, стоит иметь хорошие связи и могущественных союзников. Существовать необходимо в социуме, а не вне него.<br>")
	bloodsucker_tutorial += span_danger("* Не стоит переходить дорогу тем, кто заинтересован в твоей смерти. Охрана и неравнодушный скот могут оказаться серьезное сопротивление, если организуются.<br>")
	bloodsucker_tutorial += span_danger("* Твои враги могут пытаться остановить тебя. Для этого, самые умелые могут использовать колья. Проявляй особую осторожность - если такой окажется у тебя в груди, тебя ждёт последняя смерть... Или невозможность использовать свои способности, что в целом, почти равнозначно.<br>")
	bloodsucker_tutorial += span_danger("* Стоит стаду овец понять, где ночует волк, как они станут ждать, когда он туда вернётся, чтобы вогнать в грудь кол и даровать последнюю смерть. Скрывай своё логово от других. Не провоцируй скот, чтобы они искали тебя и пытались убить. Используй поддельную личность.<br>")
	bloodsucker_tutorial += span_danger("* Вассалы - это хлеб выживания. Удобные подручные, которым можно поручить грязную работу, призвать когда необходимо или отправить на убой.<br>")
	bloodsucker_tutorial += span_danger("* Чтобы обратить кого-то в своего раба, необходимо привести жертву к алтарю (который был заранее установлен в убежище через меню крафта, вкладка Misc). \
	Добровольность опциональна, но если жертва будет сама рада перспективам, которые даёт служение более могущественному существу, ею будет легче управлять. \
	Будущего слугу требуется разместить на алтарь и начать пытать. Лучше делать это горячим предметом, но можно и руками. Может потребоваться время для этого.<br>")

	to_chat(owner, bloodsucker_tutorial)

/datum/action/bloodsucker/tutorial/vassal
	bloodsucker_can_buy = FALSE

/datum/action/bloodsucker/tutorial/vassal/ActivatePower()
	var/bloodsucker_tutorial
	bloodsucker_tutorial += span_userdanger("<br><center>Добро пожаловать в ночь, слуга</center><br>")
	bloodsucker_tutorial += span_danger("* Ты - один из слуг своего нового хозяина, могущественного вампира.<br>")
	bloodsucker_tutorial += span_danger("* Тебе необходимо делать всё, чтобы хозяин достиг успеха. Исполняй его приказания и никогда не действуй ему во вред.<br>")
	bloodsucker_tutorial += span_danger("* Твоя жизнь - второстепенна на фоне его не-жизни. Помни об этом и будь готов погибнуть, чтобы помочь.<br>")

	bloodsucker_tutorial += span_userdanger("<br><center>Маскарад</center><br>")
	bloodsucker_tutorial += span_danger("* Пока твой хозяин недостаточно силён, он вынужден скрываться от своей пищи, что ещё не является его слугами.<br>")
	bloodsucker_tutorial += span_danger("* Ты не должен вызывать подозрения своим поведением. Излишнее раболепие может привести недоброжелателей к твоему господину.<br>")
	bloodsucker_tutorial += span_danger("* Не рассказывай никому, что у тебя появился владыка. Кусай губы в кровь под пытками и на допросе, но не смей выдать того, кто дал тебе шанс стать чем-то большим.<br>")

	bloodsucker_tutorial += span_userdanger("<br><center>Логово</center><br>")
	bloodsucker_tutorial += span_danger("* Твой хозяин, пока находится в этом секторе, наделяется властью спустя очень короткий промежуток времени. Значительно быстрее, чем если бы он находился в колонии или где-либо ещё.<br>")
	bloodsucker_tutorial += span_danger("* Чтобы повышать своё могущество, он должен впадать в транс, называемой торпором. Он же его лечит, потому если хозяин критически ранен, помещай его в гроб внутри логова и закрывай внутри.<br>")
	bloodsucker_tutorial += span_danger("* Не раскрывай логово без воли своего мастера. Это одно из самых важных для него мест. Будь готов погибнуть при его защите.<br>")

	bloodsucker_tutorial += span_userdanger("<br><center>Зверь</center><br>")
	bloodsucker_tutorial += span_danger("* Неутолимый, вечный голод - это не эфмирное проклятие.<br>")
	bloodsucker_tutorial += span_danger("* Существо, которое живёт внутри твоего хозяина, хочет только пожирать и выжить. Если не давать ему еду, оно перехватит контроль над ним.<br>")
	bloodsucker_tutorial += span_danger("* В состоянии зверя, как его описывают, красная пелена застелает глаза, а всё, о чём можно думать - это утоление голода. Твой хозяин будет похож на монстра.<br>")
	bloodsucker_tutorial += span_danger("* Он может попытаться насытиться тобой. Не сопротивляйся ему.<br>")

	bloodsucker_tutorial += span_userdanger("<br><center>Кормление, охота и скот</center><br>")
	bloodsucker_tutorial += span_danger("* Твой хозяин пьёт кровь, чтобы продлевать своё существование, использовать свои особые способности и регенерировать раны.<br>")
	bloodsucker_tutorial += span_danger("* Существует два вида кормления - скрытое и явное.<br>")
	bloodsucker_tutorial += span_danger("* Для скрытого, достаточно стоять рядом с жертвой и активировать способность. В запястье еды будут введены клыки, позволяя незаметно для неё питаться.<br>")
	bloodsucker_tutorial += span_danger("* Если кто-то стоит на расстоянии двух метров в момент начала, то они заметят, что вампир кормится.<br>")
	bloodsucker_tutorial += span_danger("* Кормление прервётся, если вампир или жертва переместятся. Если оно было незаметным, то еда и окружающие ничего не заметят по прекращению.<br>")
	bloodsucker_tutorial += span_danger("* Для явного кормления нужно схватить и крепко держать. От него жертва сразу же уснёт - она даже не заметит, что у тебя вышли клыки из пасти. Оно быстрее скрытого.<br>")
	bloodsucker_tutorial += span_danger("* При явном варианте, жертва также будет в состоянии, близком к оргазму. Укус очень приятен.<br>")
	bloodsucker_tutorial += span_danger("* В обоих случаях, жертва не будет помнить факта кормежки.<br>")

	to_chat(owner, bloodsucker_tutorial)
