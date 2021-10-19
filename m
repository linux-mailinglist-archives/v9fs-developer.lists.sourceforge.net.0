Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF913433FB1
	for <lists+v9fs-developer@lfdr.de>; Tue, 19 Oct 2021 22:12:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcvTK-0005gU-EJ; Tue, 19 Oct 2021 20:12:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1mcvTI-0005gN-Sx
 for v9fs-developer@lists.sourceforge.net; Tue, 19 Oct 2021 20:12:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lULRZJ5d3ao6ySUvWKVx/OK5Yxv64Zr2QB+S9ALbnhk=; b=KOihmUftYNBeVzglRjTnBboIsG
 fnMudnQo14Ha947/BNRn0BZH8Plf8f6iD86NO5oxkGunkix1VjOZ1XA4/5qwrqAivT/sV53EsvH+s
 PRRJwjeTSWrmpNAZwrCtn2d5uDFPtKRPFdmXtSIWD43Tbi8aLhpwykjGbG7AclXKwgKk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lULRZJ5d3ao6ySUvWKVx/OK5Yxv64Zr2QB+S9ALbnhk=; b=eeyL23lEMHaS8hhOAgS3FjDAv0
 l07jkGk9Eq76vOoGbylJ3kuy3rjlWAQ98DA+uVN/CqmQFCou0hjJudRjzIH/+37bA6QfMWMNdFTaN
 uaX41nOvOFtBQTw0qqY+D2yeMN2vpvFQrwteeJJowIrPCdHSn7JQ4ky5lc7It/UyrPJA=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcvTI-006ZkI-5M
 for v9fs-developer@lists.sourceforge.net; Tue, 19 Oct 2021 20:12:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=lULRZJ5d3ao6ySUvWKVx/OK5Yxv64Zr2QB+S9ALbnhk=; b=mIpellGqKkgTzWprx+JB2u19Fn
 W3XjBye8qaIBsuKD1brinKgUFUgTBnm83lFLOi/DJMldVswrTiZ4aLSPKKmLfiTZpN6Hy40tCEGEA
 Fpf1fzF7/hEPMwoJdNAvKJUzMMUFe6+tJAB6PVXsIs9GA7vJahbqOecOWTbFXZ4YDmLfwpOHbaIlW
 t9XhNs1dqMoagIj2giLzCvoUrzHgQqEOFJBCuwQOdhrzLZkofdCn06Uww2O40lmR8kGLTrWTBrNT+
 jvm8v/4VBD1w9anPxGRNNe76dwmejwwJBWyB0TnXXZJUuqQIlv0GqDDJ/VTYQUgbzh+g3yMKmj3QA
 u7K/IZCQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1mcvLv-00Byg0-2k; Tue, 19 Oct 2021 20:05:31 +0000
Date: Tue, 19 Oct 2021 21:04:51 +0100
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <YW8k4wEpt3Ehz5Hf@casper.infradead.org>
References: <YW8OMsrEzrY8aSxo@casper.infradead.org>
 <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
 <163456863216.2614702.6384850026368833133.stgit@warthog.procyon.org.uk>
 <2971214.1634669295@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2971214.1634669295@warthog.procyon.org.uk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Oct 19, 2021 at 07:48:15PM +0100,
 David Howells wrote:
 > Matthew Wilcox <willy@infradead.org> wrote: > > > > + isize =
 i_size_read(inode); 
 > > > + if (unlikely(iocb->ki_pos >= isize)) > > > + [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mcvTI-006ZkI-5M
Subject: Re: [V9fs-developer] [PATCH 01/67] mm: Stop filemap_read() from
 grabbing a superfluous page
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kent Overstreet <kent.overstreet@gmail.com>, Steve French <sfrench@samba.org>,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Oct 19, 2021 at 07:48:15PM +0100, David Howells wrote:
> Matthew Wilcox <willy@infradead.org> wrote:
> 
> > > +		isize = i_size_read(inode);
> > > +		if (unlikely(iocb->ki_pos >= isize))
> > > +			goto put_pages;
> > > +
> > 
> > Is there a good reason to assign to isize here?  I'd rather not,
> > because it complicates analysis, and a later change might look at
> > the isize read here, not realising it was a racy use.  So I'd
> > rather see:
> 
> If we don't set isize, the loop will never end.  Actually, maybe we can just
> break out at that point rather than going to put_pages.

Umm, yes, of course.  Sorry.

It makes more sense to just break because we haven't got any pages,
so putting pages that we haven't got seems unnecessary.
> 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
