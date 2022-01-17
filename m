Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D349449098F
	for <lists+v9fs-developer@lfdr.de>; Mon, 17 Jan 2022 14:31:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n9S6A-0005bM-AG; Mon, 17 Jan 2022 13:31:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1n9S68-0005bG-SX
 for v9fs-developer@lists.sourceforge.net; Mon, 17 Jan 2022 13:30:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DEDlOvAxf5W8MkgN2U6MW75EWRQeMQMQaovnQRcgffo=; b=cge/Ttbco7WHVOx2MIShr/pgLu
 fzz/oat1FfsarmTRZO03pWf93St/BFS9JEF1+Z4NBLkxW2SZoL674QWUNhNErx3RvF/2su0y+G9Wt
 bStBlpnyUAMbEJJAFoTtQtxs2mWveMEkI2ZPyb0QQzPACbBDDfdWcjS/SQdE1g+1BoDY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DEDlOvAxf5W8MkgN2U6MW75EWRQeMQMQaovnQRcgffo=; b=Jw+PIXj23dfMOcxzqRAtMKQY9k
 mVLyms2k5NSv8wvH6AsySqqiQxIKCPf57a1UexXlDzZ7qoQ+NIIMR4QXqaUxDCPwLihGNsx9RrooY
 r++9/aQ/mwdEmpigrnpIIXsrp3kE3MWo1tvlK6bXj77uftmuZUf/44CSlC3wb/dokqCo=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9S66-000osI-Lx
 for v9fs-developer@lists.sourceforge.net; Mon, 17 Jan 2022 13:30:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=DEDlOvAxf5W8MkgN2U6MW75EWRQeMQMQaovnQRcgffo=; b=sWeOK+ACOkqqrSHFGcOcHtqNUt
 affW2E23Y5H4gus5QTI9RNzR2H8EFMA+ssyXPEH7r0ChvHKzzQZMM6GhvSo9Y6sSIYLuUHknRms35
 r4m4Ukllxqdjth6/xEcNDXSsNRIKty4SfiLeQ8WlVQaGLQ9nHIgFuvZKcOEU2QaAvMn3xKQx8Is36
 wrlnbO+VINuUCt6Ifo4R91YldO2uIRPsLZbnaqNcpdpZpstOVzNqmwYWKYxnovCJ0GDEMR54Ffti6
 jldfxY4Dt7+NOyW8Fv26ursPmOgw9jR1Mp4KN89hlw3J5Uicwo4lbSZWBnUkV7lQwn2lq4D66VNBa
 0SAtDMtw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1n9S5F-008EUB-2d; Mon, 17 Jan 2022 13:30:05 +0000
Date: Mon, 17 Jan 2022 13:30:05 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <YeVvXToTxCsMzHZv@casper.infradead.org>
References: <2752208.1642413437@warthog.procyon.org.uk>
 <CAHk-=wjQG5HnwQD98z8de1EvRzDnebZxh=gQUVTKCn0DOp7PQw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wjQG5HnwQD98z8de1EvRzDnebZxh=gQUVTKCn0DOp7PQw@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jan 17, 2022 at 12:19:29PM +0200,
 Linus Torvalds wrote:
 > On Mon, Jan 17, 2022 at 11:57 AM David Howells <dhowells@redhat.com> wrote:
 > > > > Do you have an opinion on whether it's permissible [...] 
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
X-Headers-End: 1n9S66-000osI-Lx
Subject: Re: [V9fs-developer] Out of order read() completion and buffer
 filling beyond returned amount
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Peter Zijlstra <peterz@infradead.org>,
 David Howells <dhowells@redhat.com>, Linux-MM <linux-mm@kvack.org>,
 Marc Dionne <marc.dionne@auristor.com>, linux-afs@lists.infradead.org,
 Shyam Prasad N <nspmangalore@gmail.com>, CIFS <linux-cifs@vger.kernel.org>,
 linux-cachefs@redhat.com, Trond Myklebust <trondmy@hammerspace.com>,
 v9fs-developer@lists.sourceforge.net, Alexander Viro <viro@zeniv.linux.org.uk>,
 ceph-devel@vger.kernel.org, "open list:NFS, SUNRPC,
 AND..." <linux-nfs@vger.kernel.org>, Dave Wysochanski <dwysocha@redhat.com>,
 Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steve French <sfrench@samba.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Omar Sandoval <osandov@osandov.com>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jan 17, 2022 at 12:19:29PM +0200, Linus Torvalds wrote:
> On Mon, Jan 17, 2022 at 11:57 AM David Howells <dhowells@redhat.com> wrote:
> >
> > Do you have an opinion on whether it's permissible for a filesystem to write
> > into the read() buffer beyond the amount it claims to return, though still
> > within the specified size of the buffer?
> 
> I'm pretty sure that would seriously violate POSIX in the general
> case, and maybe even break some programs that do fancy buffer
> management (ie I could imagine some circular buffer thing that expects
> any "unwritten" ('unread'?) parts to stay with the old contents)
> 
> That said, that's for generic 'read()' cases for things like tty's or
> pipes etc that can return partial reads in the first place.
> 
> If it's a regular file, then any partial read *already* violates
> POSIX, and nobody sane would do any such buffer management because
> it's supposed to be a 'can't happen' thing.
> 
> And since you mention DIO, that's doubly true, and is already outside
> basic POSIX, and has already violated things like "all or nothing"
> rules for visibility of writes-vs-reads (which admittedly most Linux
> filesystems have violated even outside of DIO, since the strictest
> reading of the rules are incredibly nasty anyway). But filesystems
> like XFS which took some of the strict rules more seriously already
> ignored them for DIO, afaik.

I think for DIO, you're sacrificing the entire buffer with any filesystem.
If the underlying file is split across multiple drives, or is even
just fragmented on a single drive, we'll submit multiple BIOs which
will complete independently (even for SCSI which writes sequentially;
never mind NVMe which can DMA blocks asynchronously).  It might be
more apparent in a networking situation where errors are more common,
but it's always been a possibility since Linux introduced DIO.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
