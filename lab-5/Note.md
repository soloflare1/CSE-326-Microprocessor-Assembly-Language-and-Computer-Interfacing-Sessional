

```
MOV AH, 02H
INC AH
DEC AH

```
---

1. MOV AH, 02H

AH = 02H

✔ MOV does NOT change flags


---

2. INC AH

AH = AH + 1 = 03H

So:

AH = 03H

Flags behavior:

CF (Carry Flag) ❌ NOT affected by INC

ZF, SF, OF, PF, AF ✔ updated



---

3. DEC AH

AH = 03H - 1 = 02H

So final:

AH = 02H

Flags behavior:

CF ❌ NOT affected by DEC

ZF, SF, OF, PF, AF ✔ updated



---

🧾 Final Result

AH = 02H


---

⚡ Important Concept (EXAM POINT)

✔ INC / DEC

Instruction	Operation

INC	+1
DEC	-1



---

⚠️ Very Important Flag Rule

Flag	INC	DEC

CF	❌ NOT changed	❌ NOT changed
ZF	✔ changed	✔ changed
SF	✔ changed	✔ changed
OF	✔ changed	✔ changed
PF	✔ changed	✔ changed



---

🧠 Key Idea

MOV

👉 Just copy data
👉 No flags change

INC / DEC

👉 Arithmetic operation
👉 Flags change EXCEPT Carry Flag (CF)


---

🔗 C++ Equivalent

int a = 2;
a++;
a--;

Final:

a = 2;


---

⭐ Final Answer

AH = 02H

✔ Because:

02H → INC → 03H

03H → DEC → 02H



---

