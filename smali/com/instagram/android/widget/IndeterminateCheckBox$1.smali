.class Lcom/instagram/android/widget/IndeterminateCheckBox$1;
.super Ljava/lang/Object;
.source "IndeterminateCheckBox.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/widget/IndeterminateCheckBox;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/IndeterminateCheckBox;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/instagram/android/widget/IndeterminateCheckBox$1;->this$0:Lcom/instagram/android/widget/IndeterminateCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/instagram/android/widget/IndeterminateCheckBox$1;->this$0:Lcom/instagram/android/widget/IndeterminateCheckBox;

    #getter for: Lcom/instagram/android/widget/IndeterminateCheckBox;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->access$000(Lcom/instagram/android/widget/IndeterminateCheckBox;)Landroid/widget/CheckBox;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 64
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
