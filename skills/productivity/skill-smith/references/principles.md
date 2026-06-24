# Skill Smith — Principles

The WHY behind the three decisions where wrong judgment is expensive and the rule alone doesn't explain the reasoning.

## Progressive Disclosure

**Why it matters beyond length:** Moving reference out of `SKILL.md` isn't primarily a token optimisation — it protects the information hierarchy. When steps and reference share the same level, the agent's attention spreads across both. Steps it should act on and facts it should consult become peers; attending to either becomes a coin-flip. Pushing reference behind a pointer restores the hierarchy: steps are primary, reference is secondary, reached only when the pointer fires.

**The judgment call:** Push material down when a branch exists that doesn't need it. If every run through the skill needs a piece of content, keep it inline — a pointer that always fires is just indirection with extra cost. If only some runs need it, disclose it: the branches that don't need it stop paying for it.

**Pointer wording decides reliability:** A context pointer's wording — not its target — determines when and how reliably the agent reaches the material. A must-have reference behind a weakly worded pointer is a variance bug. Fix the wording first; pull the material back inline only if sharpening the pointer fails.

## Leading Words

**Why one token beats a sentence:** A leading word works because it recruits priors the model already holds from pretraining. The model doesn't need to be taught what _fog of war_ means — it already has a dense network of associations (limited visibility, acting under uncertainty, incomplete information). Repeating the token activates that network each time, anchoring the same behaviour across the skill in fewer tokens than any sentence could.

**The judgment call:** Hunt for restatements — the same behavioural principle spread across two or three sentences. That is the signal a leading word exists. When you find one, ask: is there a pretrained word that already carries this concept? If yes, collapse to it. If no pretrained word fits, coin one and define it once — but know you are spending definition tokens that a pretrained word gives free.

**A weak leading word is a no-op:** If the word doesn't change the agent's behaviour past its default, it earns nothing. The fix is a stronger word, not a different technique.

## Completion Criteria

**Why vagueness is the root cause of premature completion:** Premature completion happens because the agent's attention slips toward being done rather than doing the work. A vague criterion ("understanding reached", "list produced") gives way under that pull — the agent declares done and moves on. A sharp, checkable criterion holds: the agent can test done from not-done and resists the pull regardless of how many steps follow.

**The judgment call — order of fixes:** Sharpen the criterion first. It is local and cheap. Only when the criterion is irreducibly fuzzy and you actually observe early exit do you split the step to hide what follows. Splitting only works across a real context boundary (a user-invoked handoff or a subagent dispatch) — an inline call leaves later steps visible and clears nothing.

**Applies to flat reference too:** A body of reference with no steps can still carry a completion criterion — "every rule applied", not "rules consulted". That bar drives legwork even without a step structure to enforce it.
