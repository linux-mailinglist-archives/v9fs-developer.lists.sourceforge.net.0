Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F685A87A3
	for <lists+v9fs-developer@lfdr.de>; Wed, 31 Aug 2022 22:42:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oTUXr-00070W-Go;
	Wed, 31 Aug 2022 20:42:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1oTUXp-00070Q-Q4
 for v9fs-developer@lists.sourceforge.net;
 Wed, 31 Aug 2022 20:42:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2S8zNBkMltmRF/cvyoxKRx1ONepP3QD9MZcg6yVc+o8=; b=mZCO9mkRfcwdMOBwC2c8S5oiUD
 Rbn7GL2wx4zSz/T21A1oq1e8W/ZtkPZjJiXz89SQPwDnKWCpnTfjrsL8qD2WSh2g3k+NCgjBqiPLR
 Deio8OElv/6mi2SYlm0MpvuLk8n6Q/sxADPFgk7YrJosHqYUku+POPUIiR/cGffblS3E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2S8zNBkMltmRF/cvyoxKRx1ONepP3QD9MZcg6yVc+o8=; b=Myin4vY429RahSvROTM4lNYtG/
 BgucOEXpX6RDnCa2xdwypfJjQmdLzcOxaxfl57u8kWiOB9d854iV/brbKkALtTJpLCUWMBFDyjtua
 rEI09kqLJfKkVJf4Nx+Rw6AADd9+EcoseANmRpcFxeTt92fM4cDIaZeypiQk+nIS0Ef4=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oTUXk-009Du9-5I for v9fs-developer@lists.sourceforge.net;
 Wed, 31 Aug 2022 20:42:41 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 562C3C01E; Wed, 31 Aug 2022 22:42:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1661978542; bh=2S8zNBkMltmRF/cvyoxKRx1ONepP3QD9MZcg6yVc+o8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=d9P/NsNoX8MkIwSItZAKCOAi0leyFp63WG6GS46++sXtGbSot6NQi5KnDYcNbVZUJ
 GdhAe7Nds8tm6ZG6Tkt/+RTVNFpC5Euzv2ATZNTW7zE9zxwQySU/kJPtBr8aL3cLCa
 7Fs5DYYwQN9bkeoEFRnEEbM2fT0e/JmxOjrizXiGVshy0YWzIccCwrSfpZzq+04Btf
 PHZrabK4kCUWdi3JHieMwpP3e8rg47lARTGsTioaO5Q7x9knKS044hmURb5mMWBVeZ
 qncjFqE5a1BaEjWJew4htRgQfbHJ4CE0dN51+YD2ML/i1g2nAkhQtjsaZJW33PaO44
 CEs/1cbyynGFg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 966BAC009;
 Wed, 31 Aug 2022 22:42:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1661978541; bh=2S8zNBkMltmRF/cvyoxKRx1ONepP3QD9MZcg6yVc+o8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SjayXfD9nyhtO69rLqNAiqvy1T972+T12pYmOCjC9mXdTSMMeXwhUY5X0QYFM8Jlo
 HHY/0smde5bhP/o0/ZQHZbGgexcLtSwjFj9vL7+oBfYLp1C8jUwIaHFRjY7VLf2zgm
 wfYPsP80Rs3yQZU5d5IxgB8ANpSOVcRY+5u/P9DqX9Sm0ESTqz2waSypIQ51mNzltx
 Xr2uobUGC6VUewhQxFmw3PkuX4ygIOh/tGFHFLGK0c8Rf3s3IUmi/GDP9qL9IN9wwa
 IvjOqiTy7OpMVOUNrFf8v/A7EbWIeQ9n+53nU8ywX/cH+bYUjOUwxbd0Ds9HFxB1x/
 r1BqQviWbDSCw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id cb20c655;
 Wed, 31 Aug 2022 20:42:15 +0000 (UTC)
Date: Thu, 1 Sep 2022 05:42:00 +0900
From: asmadeus@codewreck.org
To: Schspa Shi <schspa@gmail.com>
Message-ID: <Yw/HmHcmXBVIg/SW@codewreck.org>
References: <20220831180950.76907-1-schspa@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220831180950.76907-1-schspa@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Schspa Shi wrote on Thu, Sep 01, 2022 at 02:09:50AM +0800:
 > To fix it, we can add extra reference counter to avoid deadlock, and >
 decrease it after we unlock the client->lock. Thanks for the patch! 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oTUXk-009Du9-5I
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

Schspa Shi wrote on Thu, Sep 01, 2022 at 02:09:50AM +0800:
> To fix it, we can add extra reference counter to avoid deadlock, and
> decrease it after we unlock the client->lock.

Thanks for the patch!

Unfortunately I already sent a slightly different version to the list,
hidden in another syzbot thread, here:
https://lkml.kernel.org/r/YvyD053bdbGE9xoo@codewreck.org

(yes, sorry, not exactly somewhere I'd expect someone to find it... 9p
hasn't had many contributors recently)


Basically instead of taking an extra lock I just released the client
lock before calling p9_client_cb, so it shouldn't hang anymore.

We don't need the lock to call the cb as in p9_conn_cancel we already
won't accept any new request and by this point the requests are in a
local list that isn't shared anywhere.

If you have a test setup, would you mind testing my patch?
That's the main reason I was delaying pushing it.

Since you went out of your way to make this patch if you agree with my
approach I don't mind adding your sign off or another mark of having
worked on it.

Thank you,
--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
