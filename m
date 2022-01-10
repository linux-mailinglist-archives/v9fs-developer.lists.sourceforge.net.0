Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7AA4893C0
	for <lists+v9fs-developer@lfdr.de>; Mon, 10 Jan 2022 09:39:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n6qCx-0001qu-L9; Mon, 10 Jan 2022 08:39:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <BATV+996bc53df2b455107366+6714+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1n6qCv-0001qm-Ie
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Jan 2022 08:39:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ck+GCTXTq6vx0+UGObJZ+hDxsPyCcfaXptvnTMJa0B0=; b=MCTFsjPJkmPjxIXSTmoZEwx9ru
 Wik9M5FkKZnb34cW+9Q/ADnvpJ0bGMHl7D/Ewkb1tc578sWizchI8Tnfk0asNKxInK12mtMmesqTq
 AEHUgwXgDnz3piaGVC2BXLBdS7grPmLw2tU2XrkUuEZZSRKb+NIWArjbzWInTC1hy6IY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ck+GCTXTq6vx0+UGObJZ+hDxsPyCcfaXptvnTMJa0B0=; b=OavMPlX7MDIqCt6tvEstm8Mut1
 GODN6O9emdVv15Wqt/qpmaEIxzpimmKSB+f7rwe3lL2dYHQAo5z76z8ZWCKnXNc33RdwGfL9gxNpW
 dGxg3/ssnPGYIpLwf3Dem/bjjaxGL7DEmbxFffH2oUxGjRec51H2pTA3CAmenS2fNZWE=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n6qCq-00AESP-9E
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Jan 2022 08:39:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ck+GCTXTq6vx0+UGObJZ+hDxsPyCcfaXptvnTMJa0B0=; b=2fXREzZXspdztwjUGN/nEr1V70
 ULFZg+uWcgCbVkT9RJ99GqDgBw03zzhprDIvLyzvZ7qRVO9+vpG3FpKNTtBLHUdI9wLAcco3KVtxU
 FmAawMv8GbYeU0N7j7B/Biz03mtuJx5DEGglJ9/5CKfI7DrqrZ/czk6IuLzylhKySlqk0Z8M9x2B9
 CL1qFxrETDgCNuBKXP/FrfvkiFauss03mL7R/dx00Aq6l+KQYF/bcCTcc/XaFeXO9wNYnLfNlrQgC
 YYkQXrYpcLMG3JuaGDp0ZnslXqFynsyaAfJUGtIboPtq2WUvjyLVSa5+1X7l7Sna31kLM21NjUxyO
 AHqQxnZQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1n6pUW-009jUS-SL; Mon, 10 Jan 2022 07:53:20 +0000
Date: Sun, 9 Jan 2022 23:53:20 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <Ydvl8Dk8z0mF0KFl@infradead.org>
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
 <164021541207.640689.564689725898537127.stgit@warthog.procyon.org.uk>
 <CAOQ4uxjEcvffv=rNXS-r+NLz+=6yk4abRuX_AMq9v-M4nf_PtA@mail.gmail.com>
 <Ydk6jWmFH6TZLPZq@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Ydk6jWmFH6TZLPZq@casper.infradead.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Jan 08, 2022 at 07:17:33AM +0000,
 Matthew Wilcox wrote:
 > On Sat, Jan 08, 2022 at 09:08:57AM +0200,
 Amir Goldstein wrote: > > > +#define
 S_KERNEL_FILE (1 << 17) /* File is in use by the kernel [...] 
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
X-Headers-End: 1n6qCq-00AESP-9E
Subject: Re: [V9fs-developer] [PATCH v4 38/68] vfs,
 cachefiles: Mark a backing file in use with an inode flag
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
Cc: Steve French <sfrench@samba.org>,
 Linux NFS Mailing List <linux-nfs@vger.kernel.org>,
 CIFS <linux-cifs@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-afs@lists.infradead.org,
 David Howells <dhowells@redhat.com>, v9fs-developer@lists.sourceforge.net,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel <ceph-devel@vger.kernel.org>,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sat, Jan 08, 2022 at 07:17:33AM +0000, Matthew Wilcox wrote:
> On Sat, Jan 08, 2022 at 09:08:57AM +0200, Amir Goldstein wrote:
> > > +#define S_KERNEL_FILE  (1 << 17) /* File is in use by the kernel (eg. fs/cachefiles) */
> > 
> > Trying to brand this flag as a generic "in use by kernel" is misleading.
> > Modules other than cachefiles cannot set/clear this flag, because then
> > cachefiles won't know that it is allowed to set/clear the flag.
> 
> Huh?  If some other kernel module sets it, cachefiles will try to set it,
> see it's already set, and fail.  Presumably cachefiles does not go round
> randomly "unusing" files that it has not previously started using.
> 
> I mean, yes, obviously, it's a kernel module, it can set and clear
> whatever flags it likes on any inode in the system, but conceptually,
> it's an advisory whole-file lock.

So let's name it that way.  We have plenty of files in kernel use using
filp_open and this flag very obviously means something else.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
