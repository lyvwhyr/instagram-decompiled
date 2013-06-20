.class Lcom/instagram/android/login/fragment/RegisterFragment$FormValidator;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/RegisterFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 752
    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$FormValidator;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment;Lcom/instagram/android/login/fragment/RegisterFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 752
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/RegisterFragment$FormValidator;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 766
    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterFragment$FormValidator;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #calls: Lcom/instagram/android/login/fragment/RegisterFragment;->validate()V
    invoke-static {v0}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$2300(Lcom/instagram/android/login/fragment/RegisterFragment;)V

    .line 767
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 757
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 762
    return-void
.end method
