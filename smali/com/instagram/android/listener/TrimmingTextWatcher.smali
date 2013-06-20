.class public Lcom/instagram/android/listener/TrimmingTextWatcher;
.super Ljava/lang/Object;
.source "TrimmingTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field public static TRIM_BEGINNING_REGEX:Ljava/util/regex/Pattern;

.field public static TRIM_END_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mTrimmingType:Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 20
    const-string v0, "\\s+\\Z"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/listener/TrimmingTextWatcher;->TRIM_END_REGEX:Ljava/util/regex/Pattern;

    .line 21
    const-string v0, "\\A\\s+"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/listener/TrimmingTextWatcher;->TRIM_BEGINNING_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1
    .parameter "editText"

    .prologue
    .line 27
    sget-object v0, Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;->TRIM_BOTH:Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/listener/TrimmingTextWatcher;-><init>(Landroid/widget/EditText;Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;)V
    .locals 0
    .parameter "editText"
    .parameter "trimmingType"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/instagram/android/listener/TrimmingTextWatcher;->mEditText:Landroid/widget/EditText;

    .line 32
    iput-object p2, p0, Lcom/instagram/android/listener/TrimmingTextWatcher;->mTrimmingType:Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;

    .line 33
    return-void
.end method

.method private trimBeginning(Ljava/lang/CharSequence;)Z
    .locals 5
    .parameter "editable"

    .prologue
    const/4 v0, 0x0

    .line 65
    sget-object v1, Lcom/instagram/android/listener/TrimmingTextWatcher;->TRIM_BEGINNING_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/instagram/android/listener/TrimmingTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 68
    iget-object v3, p0, Lcom/instagram/android/listener/TrimmingTextWatcher;->mEditText:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p0, Lcom/instagram/android/listener/TrimmingTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 70
    const/4 v0, 0x1

    .line 72
    :cond_0
    return v0
.end method

.method private trimEnd(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "editable"

    .prologue
    .line 76
    sget-object v0, Lcom/instagram/android/listener/TrimmingTextWatcher;->TRIM_END_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/instagram/android/listener/TrimmingTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 79
    iget-object v2, p0, Lcom/instagram/android/listener/TrimmingTextWatcher;->mEditText:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/instagram/android/listener/TrimmingTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/instagram/android/listener/TrimmingTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 81
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "editable"

    .prologue
    .line 45
    sget-object v0, Lcom/instagram/android/listener/TrimmingTextWatcher$1;->$SwitchMap$com$instagram$android$listener$TrimmingTextWatcher$TrimmingType:[I

    iget-object v1, p0, Lcom/instagram/android/listener/TrimmingTextWatcher;->mTrimmingType:Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;

    invoke-virtual {v1}, Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 47
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/instagram/android/listener/TrimmingTextWatcher;->trimBeginning(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/instagram/android/listener/TrimmingTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/listener/TrimmingTextWatcher;->trimEnd(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 50
    :cond_0
    invoke-direct {p0, p1}, Lcom/instagram/android/listener/TrimmingTextWatcher;->trimEnd(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 54
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/instagram/android/listener/TrimmingTextWatcher;->trimEnd(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 57
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/instagram/android/listener/TrimmingTextWatcher;->trimBeginning(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 37
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 41
    return-void
.end method
