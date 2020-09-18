Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D10C226FC7D
	for <lists+v9fs-developer@lfdr.de>; Fri, 18 Sep 2020 14:31:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kJFXb-0000Va-8I; Fri, 18 Sep 2020 12:31:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kJFXZ-0000VK-00
 for v9fs-developer@lists.sourceforge.net; Fri, 18 Sep 2020 12:31:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qb9VDDN9yIp9DqoN/+RfqCQGHFSolbayGqEaYturCqM=; b=e9BF0mqHz55zHrKLcffB5E85IB
 cBQLsdz6PluV9PRbGU89Zdu+PVmbzC0DhL9mMmV3cXLIDhyQba0HH/A0PFJqMQPPorLqIK1YAFcME
 70RysyyRuB44fPGgPpeZrLtyd0vm2xa+ADqyfI00LA4i3k2ygDZ0gS7VpZuuhIPyIPFU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=qb9VDDN9yIp9DqoN/+RfqCQGHFSolbayGqEaYturCqM=; b=L
 bTvjnDoE5ksNMzfenA4fnSRgQxG2P/tMMZeO9caP55VJ8DZIcc4dPcqcZdl6b2b6q4przSVHPFDR8
 ehOR0xSpXeYNkdzrrtkiLt79Jtcm9n+S38tIpKqUh8Dg0+55H2IO1ejQqS+lQem2FKv0rdlB+lm5a
 eDvGp2d6Ep4Qs3aQ=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kJFXK-00EA3b-Nv
 for v9fs-developer@lists.sourceforge.net; Fri, 18 Sep 2020 12:31:00 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 58A7FC01D; Fri, 18 Sep 2020 14:30:40 +0200 (CEST)
Date: Fri, 18 Sep 2020 14:30:25 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20200918123025.GA735@nautica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200918111916.GA32101@casper.infradead.org>
 <20200917151050.5363-3-willy@infradead.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FAKE_REPLY_C           No description available.
X-Headers-End: 1kJFXK-00EA3b-Nv
Subject: Re: [V9fs-developer] [PATCH 02/13] 9p: Tell the VFS that readpage
 was synchronous
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
Cc: linux-cifs@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 ecryptfs@vger.kernel.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-mtd@lists.infradead.org, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthew Wilcox (Oracle) wrote on Thu, Sep 17, 2020:
> The 9p readpage implementation was already synchronous, so use
> AOP_UPDATED_PAGE to avoid cycling the page lock.
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>

Acked-by: Dominique Martinet <asmadeus@codewreck.org>

(I assume it'll be merged together with the rest)

> > What I'm curious about is the page used to be both unlocked and put, but
> > now isn't either and the return value hasn't changed for the caller to
> > make a difference on write_begin / I don't see any code change in the
> > vfs  to handle that.
> > What did I miss?
> 
> The page cache is kind of subtle.  The grab_cache_page_write_begin()
> will return a Locked page with an increased refcount.  If it's Uptodate,
> that's exactly what we want, and we return it.  If we have to read the
> page, readpage used to unlock the page before returning, and rather than
> re-lock it, we would drop the reference to the page and look it up again.
> It's possible that after dropping the lock on that page that the page
> was replaced in the page cache and so we'd get a different page.

Thanks for the explanation, I didn't realize the page already is
gotten/locked at the PageUptodate goto out.

> Anyway, now (unless fscache is involved), v9fs_fid_readpage will return
> the page without unlocking it.  So we don't need to do the dance of
> dropping the lock, putting the refcount and looking the page back up
> again.  We can just return the page.  The VFS doesn't need a special
> return code because nothing has changed from the VFS's point of view --
> it asked you to get a page and you got the page.

Yes, looks good to me.

Cheers,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
