Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBC73295E9
	for <lists+v9fs-developer@lfdr.de>; Tue,  2 Mar 2021 05:38:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lGwo0-0005ap-D8; Tue, 02 Mar 2021 04:38:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@gaia.codewreck.org>) id 1lGwny-0005ah-3N
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Mar 2021 04:38:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fzTNoIzBbHR31iQXUPSLVB0C2nz82W+Ep7+3M20aQOg=; b=LRr3KzQ3XLvL3oJIxvFlsb1KWu
 3O1MDZcoUtVb3rAs49tbkUUmjy9Ig35xw+ycY1zU3NGP/dvjo3NMKD4PAI7qfCBQ1qL4ngGWs/fu0
 b3uDcFyB5AAZKYa7cr+xfX1UTG1Sf2h0DFXSEMqumxxleL772AI47fXDmWJoMzEst154=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fzTNoIzBbHR31iQXUPSLVB0C2nz82W+Ep7+3M20aQOg=; b=l2FUzGUtajIziQrzBXk05+CJsD
 UFYfuk5WP74rOy3utqdQVWU8D0Ww+zbq5+LNk7iHHOlt5QJD+8tEoKekbiqOtoGjfBJHC54EsrVc6
 ecrtRoXV69WDoon1MRhgsuEGzzAdOihiqhhDPrQ9uievP5UC8iPryg5oiM2+PUF9D1Lg=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lGwns-00AkuE-A4
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Mar 2021 04:38:41 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id B70E0C01E; Tue,  2 Mar 2021 05:38:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1614659909; bh=fzTNoIzBbHR31iQXUPSLVB0C2nz82W+Ep7+3M20aQOg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m/0eGE9M4O/xg+5IVrbVCVUg9axHbEh6li08QUJ5XKQo0JAMws92pVSZAPIAwzedo
 hauWxgPPtvst6YsRMtRP6YB5gtk1pmGqLMrjlyuFBmwvBMhk+Z74VaUGIAVil+PClX
 LKfLe0RfsmZEtlR9K0Jfba9sb8gSPVc6TMBbSk71NRcJeVF8ThUiaJzgw5U4usXgov
 FklMHFa0iKVGmsAxE1P2bj8EzazFVvl4t50qreA/ZEUIEyaga30Xw6CgAIIgekcHSk
 bOByPK2u3W73aeHrTs1F0pG5bG3+7Ho2dK6uWDIfuxumAlVdKFXGU6jJxKR1gDxfnT
 YUhKFRlrsZ7/A==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id AAE49C01B;
 Tue,  2 Mar 2021 05:38:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1614659909; bh=fzTNoIzBbHR31iQXUPSLVB0C2nz82W+Ep7+3M20aQOg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m/0eGE9M4O/xg+5IVrbVCVUg9axHbEh6li08QUJ5XKQo0JAMws92pVSZAPIAwzedo
 hauWxgPPtvst6YsRMtRP6YB5gtk1pmGqLMrjlyuFBmwvBMhk+Z74VaUGIAVil+PClX
 LKfLe0RfsmZEtlR9K0Jfba9sb8gSPVc6TMBbSk71NRcJeVF8ThUiaJzgw5U4usXgov
 FklMHFa0iKVGmsAxE1P2bj8EzazFVvl4t50qreA/ZEUIEyaga30Xw6CgAIIgekcHSk
 bOByPK2u3W73aeHrTs1F0pG5bG3+7Ho2dK6uWDIfuxumAlVdKFXGU6jJxKR1gDxfnT
 YUhKFRlrsZ7/A==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 7ce2726f;
 Tue, 2 Mar 2021 04:38:23 +0000 (UTC)
Date: Tue, 2 Mar 2021 13:38:08 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Message-ID: <YD3BMLuZXIcETtzp@codewreck.org>
References: <20210301103336.2e29da13@xhacker.debian> <YDxWrB8AoxJOmScE@odin>
 <20210301110157.19d9ad4e@xhacker.debian>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210301110157.19d9ad4e@xhacker.debian>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1lGwns-00AkuE-A4
Subject: Re: [V9fs-developer] [PATCH] net: 9p: free what was emitted when
 read count is 0
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, v9fs-developer@lists.sourceforge.net,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jisheng Zhang wrote on Mon, Mar 01, 2021 at 11:01:57AM +0800:
> Per my understanding of iov_iter, we need to call iov_iter_advance()
> even when the read out count is 0. I believe we can see this common style
> in other fs.

I'm not sure where you see this style, but I don't see exceptions for
0-sized read not advancing the iov in general, and I guess this makes
sense.


Rather than make an exception for 0, how about just removing the if as
follow ?

I've checked that the non_zc case (copy_to_iter with 0 size) also works
to the same effect, so I'm not sure why the check got added in the
first place... But then again this is old code so maybe the semantics
changed since 2015.


----
diff --git a/net/9p/client.c b/net/9p/client.c
index 4f62f299da0c..0a0039255c5b 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -1623,11 +1623,6 @@ p9_client_read_once(struct p9_fid *fid, u64 offset, struct iov_iter *to,
        }

        p9_debug(P9_DEBUG_9P, "<<< RREAD count %d\n", count);
-       if (!count) {
-               p9_tag_remove(clnt, req);
-               return 0;
-       }
-
        if (non_zc) {
                int n = copy_to_iter(dataptr, count, to);


----

If you're ok with that, would you mind resending that way?

I'd also want the commit message to be reworded a bit, at least the
first line (summary) doesn't make sense right now: I have no idea
what you mean by "free what was emitted".
Just "9p: advance iov on empty read" or something similar would do.


> > cat version? coreutils' doesn't seem to do that on their git)
> 
> busybox cat

Ok, could reproduce with busybox cat, thanks.
As expected I can't reproduce with older kernels so will run a bisect
for the sake of it as time allows

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
