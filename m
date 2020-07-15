Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 82668220E67
	for <lists+v9fs-developer@lfdr.de>; Wed, 15 Jul 2020 15:48:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jvhln-0001XY-6F; Wed, 15 Jul 2020 13:48:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jvhlj-0001XF-0j
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Jul 2020 13:48:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rcD2M5RlNh8BF3aZhfnlTi5Xlp79afwQpoQQi+snHgE=; b=AAUh0x+Q2VAJXEpbK0QlTq8KJx
 kXrrHbJW/Ib2/D+w12C+eU+zn2J+qKWOKoYE4US5v9JXb7ITSul3KAFTPR+P3CLbRMrT9W2t7ExMu
 kXHR2G+8mlVZAot2m7knW0ZJ6qKLV4C2rn44oUCADRYWWQRR7trg6L4fHuR3R8BiEC4U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rcD2M5RlNh8BF3aZhfnlTi5Xlp79afwQpoQQi+snHgE=; b=KtpP+A0RBxZL9GvkZNb8pai2W0
 xSCg7nKvajHJ+59f7xQFXL/Giq0CKluFK9x5oiatqJz8q88tHKzBw0GdWsJEKGWkCe9HZAsmPKWbq
 Ynafmz3tui/FAS3GpykYxHsqkbyNYDjUacSog3mQpfBAtH0Ms70Vy8n5GNIQZIu80QW4=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jvhlh-004WAv-Ax
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Jul 2020 13:48:18 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 21180C01B; Wed, 15 Jul 2020 15:48:11 +0200 (CEST)
Date: Wed, 15 Jul 2020 15:47:56 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20200715134756.GB22828@nautica>
References: <20200710085722.435850-1-hch@lst.de>
 <5bee3e33-2400-2d85-080e-d10cd82b0d85@nazar.ca>
 <20200711104923.GA6584@nautica> <20200715073715.GA22899@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200715073715.GA22899@lst.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jvhlh-004WAv-Ax
Subject: Re: [V9fs-developer] [PATCH] net/9p: validate fds in p9_fd_open
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
Cc: lucho@ionkov.net, syzbot+e6f77e16ff68b2434a2c@syzkaller.appspotmail.com,
 ericvh@gmail.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Doug Nazar <nazard@nazar.ca>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christoph Hellwig wrote on Wed, Jul 15, 2020:
> FYI, this is now generating daily syzbot reports, so I'd love to see
> the fix going into Linus' tree ASAP..

Yes, I'm getting some syzbot warnings as well now.

I had however only planned to get this in linux-next, since that is what
the syzbot mails were complaining about, but I see this got into -rc5...


It's honestly just a warn on something that would fail anyway so I'd
rather let it live in -next first, I don't get why syzbot is so verbose
about this - it sent a mail when it found a c repro and one more once it
bisected the commit yesterday but it should not be sending more?

(likewise it should pick up the fix tag even if it only gets in -next,
or would it keep being noisy unless this gets merged to mainline?)


FWIW this is along with the 5 other patches I have queued for 5.9
waiting for my tests as my infra is still down, I've stopped trying to
make promises, but I could push at least just this one to -next if that
really helps.
Sorry for that, things should be smoother once I've taken the time to
put things back in place.
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
