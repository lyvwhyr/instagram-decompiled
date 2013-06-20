.class public Lcom/instagram/android/widget/SearchEditText;
.super Landroid/widget/EditText;
.source "SearchEditText.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private mClearButton:Landroid/graphics/drawable/Drawable;

.field private mClearButtonEnabled:Z

.field private mClearButtonShown:Z

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLayoutHasOccurred:Z

.field private mListener:Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;

.field private mWaitingForFocus:Z

.field private mWaitingForKeyboard:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/widget/SearchEditText;->mClearButtonEnabled:Z

    .line 42
    invoke-direct {p0}, Lcom/instagram/android/widget/SearchEditText;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/widget/SearchEditText;->mClearButtonEnabled:Z

    .line 47
    invoke-direct {p0}, Lcom/instagram/android/widget/SearchEditText;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/widget/SearchEditText;->mClearButtonEnabled:Z

    .line 52
    invoke-direct {p0}, Lcom/instagram/android/widget/SearchEditText;->init()V

    .line 53
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-virtual {p0, p0}, Lcom/instagram/android/widget/SearchEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/instagram/android/widget/SearchEditText;->mClearButton:Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/instagram/android/widget/SearchEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-direct {p0}, Lcom/instagram/android/widget/SearchEditText;->isTextSelectionAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/instagram/android/widget/SearchEditText$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/widget/SearchEditText$1;-><init>(Lcom/instagram/android/widget/SearchEditText;)V

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/SearchEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/instagram/android/widget/SearchEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 69
    return-void
.end method

.method private isEnterActionKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 218
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTextSelectionAllowed()Z
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x1

    .line 74
    :try_start_0
    const-string v1, "com.htc.textselection.HtcTextSelectionManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    .line 76
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private trim(Landroid/text/Editable;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearFocus()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/SearchEditText;->setFocusableInTouchMode(Z)V

    .line 119
    invoke-super {p0}, Landroid/widget/EditText;->clearFocus()V

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/SearchEditText;->setFocusableInTouchMode(Z)V

    .line 121
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 273
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->getSearchString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->hideSoftKeyboard()V

    .line 278
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/widget/SearchEditText;->trim(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrippedText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-object v0

    .line 104
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 105
    const/16 v2, 0x40

    if-eq v1, v2, :cond_2

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    .line 106
    :cond_2
    const/4 v1, 0x1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleKeyPreIme(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 176
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->clearFocus()V

    .line 178
    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->hideSoftKeyboard()V

    .line 179
    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideSoftKeyboard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lcom/instagram/android/widget/SearchEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 225
    iput-boolean v2, p0, Lcom/instagram/android/widget/SearchEditText;->mWaitingForKeyboard:Z

    .line 226
    return-void
.end method

.method public isClearButtonEnabled()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/instagram/android/widget/SearchEditText;->mClearButtonEnabled:Z

    return v0
.end method

.method public isTextEmpty()Z
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->getSearchString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 192
    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->hideSoftKeyboard()V

    .line 194
    iget-object v0, p0, Lcom/instagram/android/widget/SearchEditText;->mListener:Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/instagram/android/widget/SearchEditText;->mListener:Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;

    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->getSearchString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;->onSearchSubmitted(Lcom/instagram/android/widget/SearchEditText;Ljava/lang/String;)V

    .line 197
    :cond_1
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-direct {p0, p1}, Lcom/instagram/android/widget/SearchEditText;->isEnterActionKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->hideSoftKeyboard()V

    .line 208
    iget-object v0, p0, Lcom/instagram/android/widget/SearchEditText;->mListener:Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/instagram/android/widget/SearchEditText;->mListener:Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;

    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->getSearchString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;->onSearchSubmitted(Lcom/instagram/android/widget/SearchEditText;Ljava/lang/String;)V

    .line 214
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/instagram/android/widget/SearchEditText;->handleKeyPreIme(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/widget/SearchEditText;->mLayoutHasOccurred:Z

    .line 260
    iget-boolean v0, p0, Lcom/instagram/android/widget/SearchEditText;->mWaitingForFocus:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->requestFocusAfterLayout()V

    .line 262
    iput-boolean v1, p0, Lcom/instagram/android/widget/SearchEditText;->mWaitingForFocus:Z

    .line 265
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/android/widget/SearchEditText;->mWaitingForKeyboard:Z

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->showSoftKeyboard()V

    .line 267
    iput-boolean v1, p0, Lcom/instagram/android/widget/SearchEditText;->mWaitingForKeyboard:Z

    .line 269
    :cond_1
    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->isTextEmpty()Z

    move-result v0

    .line 144
    iget-boolean v2, p0, Lcom/instagram/android/widget/SearchEditText;->mClearButtonShown:Z

    if-ne v2, v0, :cond_2

    .line 145
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/instagram/android/widget/SearchEditText;->mClearButtonShown:Z

    .line 146
    iget-boolean v0, p0, Lcom/instagram/android/widget/SearchEditText;->mClearButtonShown:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/instagram/android/widget/SearchEditText;->mClearButtonEnabled:Z

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/instagram/android/widget/SearchEditText;->mClearButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v3, v0, v3}, Lcom/instagram/android/widget/SearchEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 153
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 145
    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/instagram/android/widget/SearchEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 153
    :cond_2
    invoke-super {p0}, Landroid/widget/EditText;->onPreDraw()Z

    move-result v1

    goto :goto_1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter "sequence"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 159
    iget-object v0, p0, Lcom/instagram/android/widget/SearchEditText;->mListener:Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/instagram/android/widget/SearchEditText;->mListener:Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;->onSearchTextChanged(Lcom/instagram/android/widget/SearchEditText;Ljava/lang/CharSequence;III)V

    .line 162
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 125
    iget-boolean v1, p0, Lcom/instagram/android/widget/SearchEditText;->mClearButtonShown:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/instagram/android/widget/SearchEditText;->mClearButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 127
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/instagram/android/widget/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->requestFocus()Z

    .line 129
    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->showSoftKeyboard()V

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/widget/SearchEditText;->isTextSelectionAllowed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->requestFocus()Z

    .line 134
    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->showSoftKeyboard()V

    .line 137
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public requestFocusAfterLayout()V
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/instagram/android/widget/SearchEditText;->mLayoutHasOccurred:Z

    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/widget/SearchEditText;->mWaitingForFocus:Z

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/widget/SearchEditText;->requestFocus()Z

    goto :goto_0
.end method

.method public setClearButtonEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/instagram/android/widget/SearchEditText;->mClearButtonEnabled:Z

    .line 87
    return-void
.end method

.method public setOnFilterTextListener(Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/instagram/android/widget/SearchEditText;->mListener:Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;

    .line 91
    return-void
.end method

.method public showSoftKeyboard()V
    .locals 2

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/instagram/android/widget/SearchEditText;->mLayoutHasOccurred:Z

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/widget/SearchEditText;->mWaitingForKeyboard:Z

    .line 239
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/widget/SearchEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method
