.class Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
.super Ljava/lang/Object;
.source "DurationFormatUtils.java"


# instance fields
.field private count:I

.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    iput-object p1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    .line 572
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    .line 573
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .parameter "value"
    .parameter "count"

    .prologue
    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    iput-object p1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    .line 584
    iput p2, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    .line 585
    return-void
.end method

.method static containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z
    .locals 4
    .parameter "tokens"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 553
    array-length v2, p0

    move v1, v0

    .line 554
    :goto_0
    if-ge v1, v2, :cond_0

    .line 555
    aget-object v3, p0, v1

    invoke-virtual {v3}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 556
    const/4 v0, 0x1

    .line 559
    :cond_0
    return v0

    .line 554
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj2"

    .prologue
    const/4 v0, 0x0

    .line 620
    instance-of v1, p1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    if-eqz v1, :cond_0

    .line 621
    check-cast p1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    .line 622
    .end local p1
    iget-object v1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 636
    :cond_0
    :goto_0
    return v0

    .line 625
    :cond_1
    iget v1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    iget v2, p1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    if-ne v1, v2, :cond_0

    .line 628
    iget-object v1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/StringBuffer;

    if-eqz v1, :cond_2

    .line 629
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 630
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 631
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    iget-object v1, p1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 633
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    iget-object v2, p1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method getCount()I
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    return v0
.end method

.method getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method increment()V
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    .line 592
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method