Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2605A8BA9
	for <lists+v9fs-developer@lfdr.de>; Thu,  1 Sep 2022 04:59:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oTaQm-0005Zd-Oz;
	Thu, 01 Sep 2022 02:59:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <schspa@gmail.com>) id 1oTaQj-0005ZX-SI
 for v9fs-developer@lists.sourceforge.net;
 Thu, 01 Sep 2022 02:59:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:In-reply-to:
 Date:Subject:Cc:To:From:References:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eVRGKtfHojTP92sNkJnJ80bmZvj7fSvzpyBR/tNw3ks=; b=NGSyeH+lcld/kohEPr1rKDdd+7
 7Bw2n867p0V1+n/lgxoOPt/qXvq90TRPgGDk9O/AEz+6QqTOe0z1NdNc+FphGmfdiFrjEuti7nFHw
 6DBCG4EIpFDjmaJt+8mCPOv9D0bP6BVhxmvr57PWnpNGFtl9RPddtDmg182/T8RW0eZg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:Cc:To:From:
 References:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eVRGKtfHojTP92sNkJnJ80bmZvj7fSvzpyBR/tNw3ks=; b=QUzaLDJWHej30A/3s9es1+9yt6
 N1eXBFfLW3pugfFQaRhV8VQT7P18CgeXeL3vpzE23io4HTV/pqjpU4BkKZAHfdk4p+IX1jYtZyAjA
 f00qqGfEUu02HZXgdHJ4FsQdCQyHE7GxM6EbQU4Dsn/5Vbz4+BZl9wy/Wwyien9Re5lg=;
Received: from mail-pf1-f169.google.com ([209.85.210.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oTaQf-009YBX-MR for v9fs-developer@lists.sourceforge.net;
 Thu, 01 Sep 2022 02:59:45 +0000
Received: by mail-pf1-f169.google.com with SMTP id t129so16257338pfb.6
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 31 Aug 2022 19:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
 :user-agent:references:from:to:cc:subject:date;
 bh=eVRGKtfHojTP92sNkJnJ80bmZvj7fSvzpyBR/tNw3ks=;
 b=Z9FrDCeLSWgX3RZSj2UxqAE8u1GU8ozB47W0KevNli961D6+XCr2sF2kcSXaA+mt66
 bp87G2N6IE6JEEcNo1WYs8rR2EccX6rR0XhQyZBnFmGVaLNzRFolalJog6YKLv0q0Ll0
 Iuhu8EM2+R8jTPoQ++idc26GxuhUB0bqI7viJ8EombycdKbAQv+9ELLx8wF1wD3Ah4DF
 AK+DRoOfJJlmYOF35lFIk4kQqQrwxUqbvuMCal9AGB29iH0bPHG+uRyWnn+SlfoJTdgy
 R0bvt56TLQBY9gD2W48QpXXgio08W9g76BJSe6OCzoR6EIpPimc3XDvF7H1fN8qaSEfr
 eoXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
 :user-agent:references:x-gm-message-state:from:to:cc:subject:date;
 bh=eVRGKtfHojTP92sNkJnJ80bmZvj7fSvzpyBR/tNw3ks=;
 b=BaVUxN6xW8777vxmJvbingHWwJcdDCZ5x6t9hJlyQTRTrCv4AG3speOD9klrwtq8Yn
 cVptMo4GwGIJGPykwYgig9V7oK8LWr6G+x/F3sK+DMfCO2de4iWFx/UOXqKjy3/oSiDT
 p1hCot6ODgMlHrhNnu4+J9uXy5QluFNU1RWxqTwjIBLFpxAXNwSJjxGn4ek2ua8BZkSJ
 s9kDWh5slV1rxsy4Icbbrnm+znOA18DvoC5EmaIBIUkbAgWT7Hn6Yd8o450sU8AUJik7
 WveH7VbdJmQi9YbfG7WJdcf/yvK3sPKxDFvOTa+mC6s3k4qbLB+eDGYkvISqXFQpZiCH
 1A3g==
X-Gm-Message-State: ACgBeo3AN54DJHCGeTUFakKt0A+RqmP8GtiHMFPrutodex+f1sNfUD+3
 k+93uRKGG8O6RiUptRaeg1Q=
X-Google-Smtp-Source: AA6agR5robk+ckbRzd9sqLD+fqCogMqIgVeonf5UanMs9BholsVn+R4Jip+Pi6Wu0kwqJ3LkUNrAlA==
X-Received: by 2002:a63:5715:0:b0:42a:d7a4:4c30 with SMTP id
 l21-20020a635715000000b0042ad7a44c30mr24290092pgb.525.1662001176034; 
 Wed, 31 Aug 2022 19:59:36 -0700 (PDT)
Received: from MBP ([39.170.101.209]) by smtp.gmail.com with ESMTPSA id
 u6-20020a654c06000000b0043057fe66c0sm1014591pgq.48.2022.08.31.19.59.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Aug 2022 19:59:35 -0700 (PDT)
References: <20220831180950.76907-1-schspa@gmail.com>
 <Yw/HmHcmXBVIg/SW@codewreck.org>
User-agent: mu4e 1.6.10; emacs 27.2
From: Schspa Shi <schspa@gmail.com>
To: asmadeus@codewreck.org
Date: Thu, 01 Sep 2022 10:55:36 +0800
In-reply-to: <Yw/HmHcmXBVIg/SW@codewreck.org>
Message-ID: <m2bkrz7qc8.fsf@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > Schspa Shi wrote on Thu, Sep 01, 2022 at 02:09:50AM +0800:
 >> To fix it, we can add extra reference counter to avoid deadlock, and >>
 decrease it after we unlock the client->lock. > > Thanks for the [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [schspa[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.169 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.169 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oTaQf-009YBX-MR
Subject: Re: [V9fs-developer] [PATCH] p9: trans_fd: Fix deadlock when
 connection cancel
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux_oss@crudebyte.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


asmadeus@codewreck.org writes:

> Schspa Shi wrote on Thu, Sep 01, 2022 at 02:09:50AM +0800:
>> To fix it, we can add extra reference counter to avoid deadlock, and
>> decrease it after we unlock the client->lock.
>
> Thanks for the patch!
>
> Unfortunately I already sent a slightly different version to the list,
> hidden in another syzbot thread, here:
> https://lkml.kernel.org/r/YvyD053bdbGE9xoo@codewreck.org
>
> (yes, sorry, not exactly somewhere I'd expect someone to find it... 9p
> hasn't had many contributors recently)
>
>
> Basically instead of taking an extra lock I just released the client
> lock before calling p9_client_cb, so it shouldn't hang anymore.
>
> We don't need the lock to call the cb as in p9_conn_cancel we already
> won't accept any new request and by this point the requests are in a
> local list that isn't shared anywhere.
>

Ok, thank you for pointing that out.

> If you have a test setup, would you mind testing my patch?
> That's the main reason I was delaying pushing it.
>

I have test it with my enviroment, it not hang anymore.

> Since you went out of your way to make this patch if you agree with my
> approach I don't mind adding your sign off or another mark of having
> worked on it.
>
> Thank you,

-- 
BRs
Schspa Shi


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
