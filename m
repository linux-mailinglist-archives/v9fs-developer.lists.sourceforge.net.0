Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E08CF19FAD6
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Apr 2020 18:55:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jLV24-0006QG-FQ; Mon, 06 Apr 2020 16:55:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jLV23-0006Q9-4J
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Apr 2020 16:55:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EJrw8ZTI54Fm2zLK5g2EwALZmVg7mCIau63CNVNuohQ=; b=mnfrnZqqf5RWeqMoHTrebwyzf+
 dQYA+Feq4Rg0IEzr/jeCqTEOOJk0tjT1is9JtiENkj16AGlQIXRBXLBK1Ueo41iL/0ovUSbIwxow+
 Nb5Clx0g1fFwxXXR2Tzpaj8Qwx3gPG7kWtGPWwKGPZFEp8hNA6z8GvxGUKfNS2QOqM2I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EJrw8ZTI54Fm2zLK5g2EwALZmVg7mCIau63CNVNuohQ=; b=cZ1njTW1Eeqde9ZnfxdC40oJyP
 2xmCDevuUPZdcv4mF6WycOUEdC16xgZkjZUOxnuLMa0w5y+kGxz/E/bR/hn7FiROo8yyMUoan0P0M
 ix1dJ8HIqzgYsZnttW7rC5QuUpM7FHmzLNdN2dLqRqAWgNXt36xbQi3vsgGy5vXilHJY=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jLV20-009OIt-W5
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Apr 2020 16:55:31 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 6473CC01B; Mon,  6 Apr 2020 18:55:21 +0200 (CEST)
Date: Mon, 6 Apr 2020 18:55:06 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20200406165506.GA26216@nautica>
References: <20200406110702.GA13469@nautica>
 <CAHk-=whVEPEsKhU4w9y_sjbg=4yYHKDfgzrpFdy=-f9j+jTO3w@mail.gmail.com>
 <20200406164057.GA18312@nautica>
 <20200406164641.GF21484@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406164641.GF21484@bombadil.infradead.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jLV20-009OIt-W5
Subject: Re: [V9fs-developer] [GIT PULL] 9p update for 5.7
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
Cc: linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sergey Alirzaev <l29ah@cock.li>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthew Wilcox wrote on Mon, Apr 06, 2020:
> POSIX may well "allow" short reads, but userspace programmers basically
> never check the return value from read().  Short reads aren't actually
> allowed.  That's why signals are only allowed to interrupt syscalls if
> they're fatal (and the application will never see the returned value
> because it's already dead).

I've seen tons of programs not check read return value yes but these
also have no idea what O_NONBLOCK is so I'm not sure how realistic a
use-case that is?

The alternative I see would be making pipes go through the server as I
said, but that would probably mean another mount option for this; pipes
work as local pipes like they do in nfs currently.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
