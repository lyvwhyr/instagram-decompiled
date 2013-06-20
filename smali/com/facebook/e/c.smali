.class Lcom/facebook/e/c;
.super Ljava/lang/Object;
.source "RageSensorEventListener.java"


# instance fields
.field final a:J

.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/facebook/e/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:Lcom/facebook/e/d;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-wide/32 v0, 0x3b9aca00

    iput-wide v0, p0, Lcom/facebook/e/c;->a:J

    .line 94
    sget-object v0, Lcom/facebook/e/d;->a:Lcom/facebook/e/d;

    iput-object v0, p0, Lcom/facebook/e/c;->e:Lcom/facebook/e/d;

    .line 97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/e/c;->b:Ljava/util/LinkedList;

    .line 98
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/e/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 121
    return-void
.end method

.method a(Landroid/hardware/SensorEvent;)V
    .locals 5
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/e/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 103
    if-nez v0, :cond_0

    .line 105
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/facebook/e/c;->c:J

    .line 106
    iget-wide v0, p0, Lcom/facebook/e/c;->c:J

    const-wide/32 v2, 0x3b9aca00

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/e/c;->d:J

    .line 107
    iget-object v0, p0, Lcom/facebook/e/c;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/facebook/e/e;

    invoke-direct {v1, p1}, Lcom/facebook/e/e;-><init>(Landroid/hardware/SensorEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 117
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v3, p0, Lcom/facebook/e/c;->d:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/facebook/e/c;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/facebook/e/e;

    invoke-direct {v1, p1}, Lcom/facebook/e/e;-><init>(Landroid/hardware/SensorEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/facebook/e/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/e/e;

    .line 114
    invoke-virtual {v0, p1}, Lcom/facebook/e/e;->a(Landroid/hardware/SensorEvent;)V

    .line 115
    iget-object v1, p0, Lcom/facebook/e/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method b()Z
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 130
    .line 132
    iget-object v0, p0, Lcom/facebook/e/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/e/e;

    .line 133
    iget v4, v0, Lcom/facebook/e/e;->a:F

    const v7, 0x416b5c0f

    cmpl-float v4, v4, v7

    if-lez v4, :cond_1

    move v4, v5

    .line 134
    :goto_1
    iget v0, v0, Lcom/facebook/e/e;->a:F

    const v7, -0x3e94a3f1

    cmpg-float v0, v0, v7

    if-gez v0, :cond_2

    move v0, v5

    .line 136
    :goto_2
    sget-object v7, Lcom/facebook/e/b;->a:[I

    iget-object v8, p0, Lcom/facebook/e/c;->e:Lcom/facebook/e/d;

    invoke-virtual {v8}, Lcom/facebook/e/d;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_3
    move v0, v1

    move v1, v3

    :goto_4
    move v3, v1

    move v1, v0

    .line 170
    goto :goto_0

    :cond_1
    move v4, v2

    .line 133
    goto :goto_1

    :cond_2
    move v0, v2

    .line 134
    goto :goto_2

    .line 139
    :pswitch_0
    if-eqz v4, :cond_3

    .line 140
    sget-object v0, Lcom/facebook/e/d;->b:Lcom/facebook/e/d;

    iput-object v0, p0, Lcom/facebook/e/c;->e:Lcom/facebook/e/d;

    .line 141
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    move v1, v3

    goto :goto_4

    .line 142
    :cond_3
    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/facebook/e/d;->c:Lcom/facebook/e/d;

    iput-object v0, p0, Lcom/facebook/e/c;->e:Lcom/facebook/e/d;

    .line 144
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    move v1, v3

    goto :goto_4

    .line 150
    :pswitch_1
    if-eqz v0, :cond_4

    .line 151
    sget-object v0, Lcom/facebook/e/d;->c:Lcom/facebook/e/d;

    iput-object v0, p0, Lcom/facebook/e/c;->e:Lcom/facebook/e/d;

    .line 152
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    move v1, v3

    goto :goto_4

    .line 153
    :cond_4
    if-nez v4, :cond_0

    .line 154
    sget-object v0, Lcom/facebook/e/d;->a:Lcom/facebook/e/d;

    iput-object v0, p0, Lcom/facebook/e/c;->e:Lcom/facebook/e/d;

    move v0, v1

    move v1, v3

    goto :goto_4

    .line 161
    :pswitch_2
    if-eqz v4, :cond_5

    .line 162
    sget-object v0, Lcom/facebook/e/d;->b:Lcom/facebook/e/d;

    iput-object v0, p0, Lcom/facebook/e/c;->e:Lcom/facebook/e/d;

    .line 163
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    move v1, v3

    goto :goto_4

    .line 164
    :cond_5
    if-nez v0, :cond_0

    .line 165
    sget-object v0, Lcom/facebook/e/d;->a:Lcom/facebook/e/d;

    iput-object v0, p0, Lcom/facebook/e/c;->e:Lcom/facebook/e/d;

    goto :goto_3

    .line 173
    :cond_6
    if-lt v3, v9, :cond_7

    if-lt v1, v9, :cond_7

    :goto_5
    return v5

    :cond_7
    move v5, v2

    goto :goto_5

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
