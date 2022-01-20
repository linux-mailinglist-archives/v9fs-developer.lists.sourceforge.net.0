Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D2A494A5E
	for <lists+v9fs-developer@lfdr.de>; Thu, 20 Jan 2022 10:09:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nATRW-0001qS-G4; Thu, 20 Jan 2022 09:09:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <BATV+0328028a7a74e2859a11+6724+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1nATRU-0001qM-W1
 for v9fs-developer@lists.sourceforge.net; Thu, 20 Jan 2022 09:09:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ojH90duUrlg/GDFel8G8XOOeQrX2zbxUTaKAoe1bGvs=; b=mLDb5L/2BgSomZ2Y4lHAhh2dPh
 Da7iPCMhEMOtNYJ+et/9OiurgOoAjX+KEkk/Qe7HuACoGoF65zq/ggHuA1hoOWHEpKhTQki8o8iGV
 pDB29KAJVnXJfzosnaT7kQeKaYb0Ikgwhs37SAsICqEptvrBV4o80z0ltfFj8XM7nVUY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ojH90duUrlg/GDFel8G8XOOeQrX2zbxUTaKAoe1bGvs=; b=d7W6b46wYRgstlT6dJC43ZOJ38
 08YdsWdMJJ7JxOGm76mFntToAnSduCEngqVizJlh8pXyjD49da/nuwvBZtVBuj+b08UiT2SQwk0Ap
 HR8rZTi8U5NGZIxJCUIRkbcQhm6gtoDc/cSe/7cK6kbhcKlueihOQ571sPcfH2w/xQfs=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nATRS-004hqd-SP
 for v9fs-developer@lists.sourceforge.net; Thu, 20 Jan 2022 09:09:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ojH90duUrlg/GDFel8G8XOOeQrX2zbxUTaKAoe1bGvs=; b=tCO5lD4il6m52dcPk+/cYpHidp
 +onLjblS0VrPFPxS9ZGJUQvdyNeZPPGHNAfF+5peIslo4QgfZyN8BmETycomdYalpvi6wzkvq4RyL
 xpk6fgqFhh41z7Jecw/dPJnI+IIgRJgrJPksZWbTPWwU8R3QsvMLuMlkPHQ3yTy59btCClyFa50/d
 T+CHX9m/pw3Xmdpesim/0kl6EPfhr0hcZN+/djS0aMkWwifGzbSVu6YPpYkiUaN68OlmHsaX3qOtf
 0RJQrwayc+fmmfjAoqUshIAxqNkE7rnwubq99z+oFJjmVHdfhSYo6uk3OXvGjR9gwacmvJ57xP/KY
 f83fZOtA==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nATR7-00A4wf-Az; Thu, 20 Jan 2022 09:08:53 +0000
Date: Thu, 20 Jan 2022 01:08:53 -0800
From: Christoph Hellwig <hch@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <YekmpeQvNlGlMvNY@infradead.org>
References: <YeefizLOGt1Qf35o@infradead.org> <YebpktrcUZOlBHkZ@infradead.org>
 <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
 <164251409447.3435901.10092442643336534999.stgit@warthog.procyon.org.uk>
 <3613681.1642527614@warthog.procyon.org.uk>
 <3765724.1642583885@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3765724.1642583885@warthog.procyon.org.uk>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jan 19, 2022 at 09:18:05AM +0000,
 David Howells wrote:
 > The flag cannot just be dropped - it's an important part of the interaction
 > with cachefilesd with regard to culling. Culling to free [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1nATRS-004hqd-SP
Subject: Re: [V9fs-developer] [PATCH 09/11] vfs,
 fscache: Add an IS_KERNEL_FILE() macro for the S_KERNEL_FILE flag
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
 linux-fsdevel@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, Christoph Hellwig <hch@infradead.org>,
 Steve French <smfrench@gmail.com>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Jan 19, 2022 at 09:18:05AM +0000, David Howells wrote:
> The flag cannot just be dropped - it's an important part of the interaction
> with cachefilesd with regard to culling.  Culling to free up space is
> offloaded to userspace rather than being done within the kernel.
> 
> Previously, cachefiles, the kernel module, had to maintain a huge tree of
> records of every backing inode that it was currently using so that it could
> forbid cachefilesd to cull one when cachefilesd asked.  I've reduced that to a
> single bit flag on the inode struct, thereby saving both memory and time.  You
> can argue whether it's worth sacrificing an inode flag bit for that, but the
> flag can be reused for any other kernel service that wants to similarly mark
> an inode in use.

Which is a horrible interface.   But you tricked Linus into merging this
crap, so let's not pretent it is a "kernel file".  We have plenty of
those, basically every caller of filp_open is one.

It is something like "pinned for fscache/cachefiles", so name it that
way and add a big fat comment expaining the atrocities.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
