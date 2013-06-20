.class Lcom/instagram/android/login/fragment/LookupFragment$FormValidator;
.super Ljava/lang/Object;
.source "LookupFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/LookupFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/login/fragment/LookupFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/instagram/android/login/fragment/LookupFragment$FormValidator;->this$0:Lcom/instagram/android/login/fragment/LookupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/LookupFragment;Lcom/instagram/android/login/fragment/LookupFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/LookupFragment$FormValidator;-><init>(Lcom/instagram/android/login/fragment/LookupFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/instagram/android/login/fragment/LookupFragment$FormValidator;->this$0:Lcom/instagram/android/login/fragment/LookupFragment;

    #calls: Lcom/instagram/android/login/fragment/LookupFragment;->validate()V
    invoke-static {v0}, Lcom/instagram/android/login/fragment/LookupFragment;->access$400(Lcom/instagram/android/login/fragment/LookupFragment;)V

    .line 200
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 190
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 195
    return-void
.end method
