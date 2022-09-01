Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE815A9B9A
	for <lists+v9fs-developer@lfdr.de>; Thu,  1 Sep 2022 17:28:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oTm75-000834-VY;
	Thu, 01 Sep 2022 15:28:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1oTm74-00082x-Cj
 for v9fs-developer@lists.sourceforge.net;
 Thu, 01 Sep 2022 15:28:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iVZmXkRo7BKC/ObnBuv9eAWgxqprDCQYopbDV0cm8ZA=; b=manuFTH99tyLli2v8KkuZ0jjE8
 23+dm+gl5wtfNJwgt+ng2kyBQ//A9wVrQq13n9OnA7NcChSAC9mkxcOmUZGmiDZN1CT+4o7gj+D8v
 a4Hu8zx94cXnn2/w/h6ZF1S5PgOsI4Yf6Pm/836d3pzaGXjMdo0eF24fGf8tgFRCx0iU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iVZmXkRo7BKC/ObnBuv9eAWgxqprDCQYopbDV0cm8ZA=; b=VTITQ9U3B+AFk14Ua1OW2xrKfV
 bBzrJSTfqBFh0bWPD2F+YiB6W3cuUZ0My+4UobfH1wPxal3tZJRu/LISh9Y9RIZAQLAbZGn8W4PQK
 bgTdxplWZBQ3xy0XoeiY1SSxo3UDfLxPPSyk+U3xmSK3MKm5NT1e+2Tegg5wsXF3xmm0=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oTm6y-00AED6-0u for v9fs-developer@lists.sourceforge.net;
 Thu, 01 Sep 2022 15:28:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=iVZmXkRo7BKC/ObnBuv9eAWgxqprDCQYopbDV0cm8ZA=; b=R+861XU5V5SAXZ6YWA8ropbfi1
 ZuvDKzYCbOhxZvRdUPuqyNRMmwBCmRE+eYTUGjXOCnC9kwk9L8ldpNkP7E41txt+kfyIlI4AskHiQ
 /mA3ZiLe6noHRotbtsARf/0ttGGJNC25YrILvQbJlFyiRLcXxVNQ2TwYIPMejFR/e28K5/7jXtuFX
 Ol2ngJ4ODZY+OCeFb0RXKMmSdajColXb3alNeSASgAFUeLvv9PvNX5Qej/aMEAN0wXfjv/INOaDCL
 rP9pcDsPpHRukUR4RNAWMXGLCiFb9vRWCmhiyoBvM+MJtgQJJxpg0Jz6c674sjVIlLXbeOMUmpXE/
 NBaRJWOhumtC8IV2lDBSdugPhNguo7rH0l2pdS3qlPIwTUUPPXXPfU6AND4hIBH1OsCAKaSZql42h
 P29kr0ZVK2j4dCAEe0YOXS2LFhARIvUIf/8hHRfk53oA8FmlWMkgYWdbA0qUcb8nwsLwOXgYy8zj2
 utkUOTarINxD40ClcNNmk1G8hn1Ay0gdFG47A+z8wzhCb4U9CBN6ghh7mLOnHQklCOE88998/TSMb
 H17fX4p6wuy8osELaHFJy2gM13884RKYjjKlkMS6epGR8lT6rhgAkiA33JAArWIq0U4vypd3w/Gvo
 oQ5DVn5LlzunLTQEPSdSdBHUTrDRsPDixuM6lqFvQ=;
To: asmadeus@codewreck.org, Schspa Shi <schspa@gmail.com>
Date: Thu, 01 Sep 2022 17:27:53 +0200
Message-ID: <2739602.9NfmOOc9RC@silver>
In-Reply-To: <m2bkrz7qc8.fsf@gmail.com>
References: <20220831180950.76907-1-schspa@gmail.com>
 <Yw/HmHcmXBVIg/SW@codewreck.org> <m2bkrz7qc8.fsf@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Donnerstag, 1. September 2022 04:55:36 CEST Schspa Shi
 wrote: > asmadeus@codewreck.org writes: > > Schspa Shi wrote on Thu, Sep 01,
 2022 at 02:09:50AM +0800: > >> To fix it, we can add extra refere [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oTm6y-00AED6-0u
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Donnerstag, 1. September 2022 04:55:36 CEST Schspa Shi wrote:
> asmadeus@codewreck.org writes:
> > Schspa Shi wrote on Thu, Sep 01, 2022 at 02:09:50AM +0800:
> >> To fix it, we can add extra reference counter to avoid deadlock, and
> >> decrease it after we unlock the client->lock.
> > 
> > Thanks for the patch!
> > 
> > Unfortunately I already sent a slightly different version to the list,
> > hidden in another syzbot thread, here:
> > https://lkml.kernel.org/r/YvyD053bdbGE9xoo@codewreck.org
> > 
> > (yes, sorry, not exactly somewhere I'd expect someone to find it... 9p
> > hasn't had many contributors recently)
> > 
> > 
> > Basically instead of taking an extra lock I just released the client
> > lock before calling p9_client_cb, so it shouldn't hang anymore.
> > 
> > We don't need the lock to call the cb as in p9_conn_cancel we already
> > won't accept any new request and by this point the requests are in a
> > local list that isn't shared anywhere.
> 
> Ok, thank you for pointing that out.
> 
> > If you have a test setup, would you mind testing my patch?
> > That's the main reason I was delaying pushing it.
> 
> I have test it with my enviroment, it not hang anymore.

Are you fine with that Dominique, or do you want me to test your linked patch 
as well?

You can also explicitly tell me if you need something to be reviewed/tested.

> > Since you went out of your way to make this patch if you agree with my
> > approach I don't mind adding your sign off or another mark of having
> > worked on it.
> > 
> > Thank you,






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
