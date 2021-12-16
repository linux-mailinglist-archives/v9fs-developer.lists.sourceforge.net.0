Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF86477C90
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Dec 2021 20:29:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mxwRk-0007EP-Td; Thu, 16 Dec 2021 19:29:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1mxwRi-0007EI-30
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 19:29:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N9CxEizcUKUMKe7tygLAy2SKNqVIaZunBZQhmUvlaCo=; b=XLOrxUYOtigjsBgmxvTMWhdVeH
 qEG39qZfrO6ObWlwKqiDJuKYgk0K/QrVc/WmVAsP3kxmlz9K4Mu0+nLuPcXVVf5ExIJ5WNqP+y5ld
 3g18yQ+rl7aOf0jRmeQOuCt29nO5qCyVLnj7YQM1mTJ0Zr7fSOLjXypKetx/6X9wnhbA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N9CxEizcUKUMKe7tygLAy2SKNqVIaZunBZQhmUvlaCo=; b=OlPtlJLef3J6RtXysl5yefWiuj
 X4gbwHGGSOAELkYhcTKmOnvhVO0nH+//lbUTs5+HD7u0BoronGCK30+n6dEb75wAWPv667+zCKWam
 mtEhvpJ1q8hqK1P6jhODZT+hcQ26jMYd13mSDCL/QS3KxDhNZ+VxuHUhxwYG5gn0GHhQ=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mxwRf-00059F-Oe
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 19:29:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=N9CxEizcUKUMKe7tygLAy2SKNqVIaZunBZQhmUvlaCo=; b=TfIC8wH+3iPtFaTNNHTiwoOSwz
 Bpsoi/K/YScFLbzdHHr0K8D4ikaBbFc/WqSk3CClQHeadtbcZldeGLW1OWzKGfUrcONUURVgJ3AKW
 7vvwE7ExhcmC69CTT6pe0i9JUhRALDvQ/XpthdOB/NXqZHs1AuyGOUHNH/oNkTuSwVfvAjuIfuhGC
 Y605ibUw+jfKHeuEPoHslvWaMnVjItExifSdcTybxLgeV5XJXC9PJB18n9KIcEQwZFGm02AaimUXN
 XxcV0oSs+Qu5b4zlqfrJAGknSX+Z66iNgHKFBxEBI2dGXXpHL/POwbDa64BswFZhhWynw0aJMTSGl
 MNr1Gg0w==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1mxwQj-00Ft6U-EP; Thu, 16 Dec 2021 19:28:41 +0000
Date: Thu, 16 Dec 2021 19:28:41 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <YbuTaRbNUAJx5xOA@casper.infradead.org>
References: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
 <163967169723.1823006.2868573008412053995.stgit@warthog.procyon.org.uk>
 <CAHk-=wi0H5vmka1_iWe0+Yc6bwtgWn_bEEHCMYsPHYtNJKZHCQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wi0H5vmka1_iWe0+Yc6bwtgWn_bEEHCMYsPHYtNJKZHCQ@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Dec 16, 2021 at 08:31:19AM -0800,
 Linus Torvalds wrote:
 > On Thu, Dec 16, 2021 at 8:22 AM David Howells <dhowells@redhat.com> wrote:
 > > > > With transparent huge pages, in the future, write_b [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1mxwRf-00059F-Oe
Subject: Re: [V9fs-developer] [PATCH v3 56/68] afs: Handle len being
 extending over page end in write_begin/write_end
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
Cc: Steve French <sfrench@samba.org>, "open list:NFS, SUNRPC,
 AND..." <linux-nfs@vger.kernel.org>, CIFS <linux-cifs@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 David Howells <dhowells@redhat.com>, JeffleXu <jefflexu@linux.alibaba.com>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 Marc Dionne <marc.dionne@auristor.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>, linux-afs@lists.infradead.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Dec 16, 2021 at 08:31:19AM -0800, Linus Torvalds wrote:
> On Thu, Dec 16, 2021 at 8:22 AM David Howells <dhowells@redhat.com> wrote:
> >
> > With transparent huge pages, in the future, write_begin() and write_end()
> > may be passed a length parameter that, in combination with the offset into
> > the page, exceeds the length of that page.  This allows
> > grab_cache_page_write_begin() to better choose the size of THP to allocate.
> 
> I still think this is a fundamental bug in the caller. That
> "explanation" is weak, and the whole concept smells like week-old fish
> to me.

You're right that  ->write_end can't be called with more bytes than fit
in the folio.  That makes no sense at all.

I haven't finished fully fleshing this out yet (and as a result we still
only create PAGE_SIZE folios on writes), but my basic plan was:

generic_perform_write:
-	bytes = min_t(unsigned long, PAGE_SIZE - offset,
+	bytes = min_t(unsigned long, FOLIO_MAX_PAGE_CACHE_SIZE - offset,
 					iov_iter_count(i));
...
                status = a_ops->write_begin(file, mapping, pos, bytes, flags,
-                                               &page, &fsdata);
+                                               &folio, &fsdata);

+		offset = offset_in_folio(folio, pos);
+		bytes = folio_size(folio - offset);
...
                status = a_ops->write_end(file, mapping, pos, bytes, copied,
-                                               page, fsdata);
+                                               folio, fsdata);

Since ->write_begin is the place where we actually create folios, it
needs to know what size folio to create.  Unless you'd rather we do
something to actually create the folio before calling ->write_begin?


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
