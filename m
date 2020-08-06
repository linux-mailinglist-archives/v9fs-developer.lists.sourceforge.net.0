Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1D323DA61
	for <lists+v9fs-developer@lfdr.de>; Thu,  6 Aug 2020 14:39:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k3fAy-0000bV-Nz; Thu, 06 Aug 2020 12:39:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1k3fAx-0000bN-Ae
 for v9fs-developer@lists.sourceforge.net; Thu, 06 Aug 2020 12:39:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mVLYPl1bFAZ7a9RdY3qHwB1VgQmaSeMggtS7U+JiM08=; b=asxi6i5+rIEWYF0NF/BJqdaowL
 iAXlTIwLTeb/rHr3V17PbBTicQe26Tb/S3Y5oTrkm8nSrYboHkpt+AcKlOPfEOaP1GDQzMnVFgml0
 ueGYcgiW99odF8RkJXz165JXIjZb33KJIwgKHkWM0LI34M1fOXVVn1gxF/yjHc3nKljY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mVLYPl1bFAZ7a9RdY3qHwB1VgQmaSeMggtS7U+JiM08=; b=j7Fi97PW0KOi8su9locVul0y1a
 mRzzwyCJo4J15rlTEB09zNYYgff3xPqhy8j1XqRwdBFu//NJoIfEIpAFhyNCISJeuKUmx8ejWOv7X
 +ppksBO2R83iqWFlxk/W1VnvFfQM6b9pEoaU9f3vbvZarI2ke/OGV6/ONaB4qgdA+L2w=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k3fAv-00EaTh-A3
 for v9fs-developer@lists.sourceforge.net; Thu, 06 Aug 2020 12:39:15 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id ACF60C009; Thu,  6 Aug 2020 14:39:04 +0200 (CEST)
Date: Thu, 6 Aug 2020 14:38:49 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Alexey Kardashevskiy <aik@ozlabs.ru>
Message-ID: <20200806123849.GA2640@nautica>
References: <9d8a8abf-7968-2752-89e7-bac39ae91999@ozlabs.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9d8a8abf-7968-2752-89e7-bac39ae91999@ozlabs.ru>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k3fAv-00EaTh-A3
Subject: Re: [V9fs-developer] 9p/trans_fd lockup
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
Cc: v9fs-developer@lists.sourceforge.net, Greg Kurz <groug@kaod.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Alexey Kardashevskiy wrote on Thu, Aug 06, 2020:
> I am seeing another bug in 9p under syzkaller, the reprocase is:
> 
> r0 = open$dir(&(0x7f0000000040)='./file0\x00', 0x88142, 0x182)
> 
> r1 = openat$null(0xffffffffffffff9c, &(0x7f0000000640)='/dev/null\x00',
> 0x0, 0x0)
> mount$9p_fd(0x0, &(0x7f0000000000)='./file0\x00',
> &(0x7f00000000c0)='9p\x00', 0x0, &(0x7f0000000100)={'trans=fd,',
> {'rfdno', 0x3d, r1}, 0x2$, {'wfdno', 0x3d, r0}})
> 
> 
> 
> The default behaviour of syzkaller is to call syscalls concurrently (I
> think), at least it forks by default and executes the same sequence in
> both threads.
> 
> In this example both threads makes it to:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/net/9p/client.c?h=v5.8#n757
> 
> and sit there with the only difference which is thread#1 goes via
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/net/9p/client.c?h=v5.8#n767
> 
> I am pretty sure things should not have gone that far but I cannot
> clearly see what needs fixing. Ideas? Thanks,

Unkillable threads there happen with the current p9_client_rpc when
there is no real server (or server bug etc); the code is really stupid.

Basically what happens is that when you send a first signal (^C or
whatever), the function catches the signal, sends a flush, and
indefinitely waits for the flush to come back.
If you send another signal there no more flush comes but it goes back to
waiting -- it's using wait_event_killable but it's a lie it's not really
killable it just loops on that wait until the flush finally comes, which
will never come in your case.
(the rpc that came by the way is probably version or whatever is first
done on mount)


Dmitry reported that to me ages ago and I have a fix which is just to
stop waiting for the flush -- just make it asynchronous, send and
forget. That removes the whole signal handling logic and it won't hang
there anymore.

I sent the patches to the list last year, but didn't get much feedback
and didn't have time to run all the tests I wanted to run on it.


I have some free time at the end of the month so I was planning to
finish it for 5.10 (e.g. won't send it for 5.9 but once 5.9 initial
merge window passed leave it in -next for a couple of months and push it
for 5.10), so your timing is pretty good :)
An extra pair of eyes would be more than appreciated.

You can find the original mails there:
https://lore.kernel.org/lkml/1544532108-21689-3-git-send-email-asmadeus@codewreck.org/

They're also in my 9p-test branch on git://github.com/martinetd/linux


Cheers & thanks for the attention,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
