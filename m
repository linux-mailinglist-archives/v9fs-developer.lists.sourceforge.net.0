Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1042CE174
	for <lists+v9fs-developer@lfdr.de>; Thu,  3 Dec 2020 23:15:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kkwsm-0006Ss-Hm; Thu, 03 Dec 2020 22:15:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kkwsl-0006Sk-2p
 for v9fs-developer@lists.sourceforge.net; Thu, 03 Dec 2020 22:15:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9RnW75V2ft6CYV2AWxcLJJxN6B3UJUIpbVBcN0U+JaY=; b=d5WnClkaKdXFk4B1h1UC2ITK50
 SSHYG0XZzkaXlSn+Wg1JvuZtDOtXrxGPoGMrfREVSz0e0pDxgmfnDG5eibzjQejnBvkW0tzqCwtmD
 eXBuzdJQ17Aq0anRx+UumLaInsaAHmSm8g0awrud83YtEZ/V+tldqZlG7UMzlw0kAqns=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9RnW75V2ft6CYV2AWxcLJJxN6B3UJUIpbVBcN0U+JaY=; b=GG8BqsI3dS3PBV/huUdYoivuIW
 d6tI1rlM9r/JG241VapN06djTs+W86ZtHU5rqPaFsI4elVtLUJ2GZh9ayIZg5PbBbQc4P5G7omNhc
 9ordU9Yn7+h5jFPNaGsy0B/1NDjriCDIMB/y/hG1ijvcJHWwi69iyy42mdLzKhViUMS8=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kkwsf-000nwF-VV
 for v9fs-developer@lists.sourceforge.net; Thu, 03 Dec 2020 22:15:23 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 7FBBCC009; Thu,  3 Dec 2020 23:15:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1607033711; bh=9RnW75V2ft6CYV2AWxcLJJxN6B3UJUIpbVBcN0U+JaY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OFVh/CZnaz9Ib5kGBsHdWXhDebaWor4yi8e7e+LvZdveeekJMS+aTgtILS52HamNf
 iXHcwcyzmG6whJcJoECWtn+8y2EiweJigxrzBT0GRHxU7K4eC4NBaL5bs9m6FYrIhh
 NWTn1mTOL42mKL0awS7Q0hMDPNZRkpKZgjMorBfoe+caJwHQ456leuec83W0ghRGaw
 vYLhYkE9JOvNT4tFOiWzbIa2BeAGsbJwPctWOnPpe9VM1tz3uFV5mnRYxpB2gPFe/s
 W4qnNSSTQilGnvY03q1xCewTFmBvuJW1aDAPPWMbYZAELAKQsWXQem+lWUV7D0I3Kn
 dxZlFEbLyloxw==
Date: Thu, 3 Dec 2020 23:14:56 +0100
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20201203221456.GA20620@nautica>
References: <20201203103315.GA3298@nautica>
 <CAHk-=wigRSokT5YLRGH5Jyun1CwgYHR_1RMcoHjUyz7NJ8wG_g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wigRSokT5YLRGH5Jyun1CwgYHR_1RMcoHjUyz7NJ8wG_g@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kkwsf-000nwF-VV
Subject: Re: [V9fs-developer] [GIT PULL] 9p update for 5.10-rc7 (restore
 splice ops)
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
Cc: v9fs-developer@lists.sourceforge.net,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Linus Torvalds wrote on Thu, Dec 03, 2020:
> Pulled.

Thanks!

> > (Thanks for letting me know my mails got flagged as spam last time, I've
> > taken the time to setup dkim/dmarc which brings its share of problems
> > with some mailing lists but hopefully will help here)
> 
> It looks good here, but I would suggest you edit your DKIM configuration a bit.
> 
> In particular, you have "List-ID" in your set of header files that
> DKIM hashes, and that means that any mailing list that then adds that
> header will destroy your DKIM hash.

Hmm, good catch, but that one was on me just now -- I just resent the
mail as I got it through the v9fs list to reuse recipients instead of
the one I had sent before so I did send a bogus list-id, which happened
to get signed.
... looking at list archives it looks like majordomo took that to be a
spam and didn't forward the mail at all, that's a discrete way to sneak
a direct mail without any Cc!
I was about to add it to ignored headers for signing but I'll just have
to be careful about that now. Or figure how to make mutt drop it first.


The problems I had with dkim are all lists that add footers so really
not much to do about header filtering (normally lists would change the
from when they do that or change subject, but for some reason the two
I'm thinking of don't, one of the two even strips dkim headers so even
the body length flag (l=) isn't helping)
I haven't had problems with kernel lists which don't mess with key
headers, good job admins.


Anyway, it's a bit off topic -- good to know new mail didn't go to spam
at least :)
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
