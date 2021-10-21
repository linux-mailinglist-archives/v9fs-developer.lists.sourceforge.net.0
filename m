Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35942436E8A
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 01:52:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdhrA-0003JX-HV; Thu, 21 Oct 2021 23:52:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@kernel.org>) id 1mdhr9-0003JK-23
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Oct 2021 23:52:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vfk9QTysokdDsULFKqjANCjNBEkXOreqiGK8CxamuRo=; b=eUcjtguRPo6xFtU9u7yGRBlZuF
 6N6iDlkztgmOcvJvm57c6K9xU5KNC/K8IMfKTJr3eYFndC3+IGT5Ud/S1Pwj8TYWroHyYVQxI8pXi
 z1W/wMSavdXvghB23LfGEqRiqFkJVqf/rKVRHaa+3wzIMgIbV2uX8PxdOVlahX3jKE70=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vfk9QTysokdDsULFKqjANCjNBEkXOreqiGK8CxamuRo=; b=kyVSD+zCAamhnSRXPuu2jnbtEl
 wqon9TXQwMoTtrMW+xEvCiGq1+UmsjE8Qh2Iy5wLNV1EJjAFy2LCo0LMjjSvQTlbJ+Zq64Lk0RBeV
 cErad/HMhz1Auegx0lJecnkIRAFf6MZkk7sHs/ai0BZ0U3ztfH7ChkUCLemZvtzRc2IA=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdhr4-00B51L-87
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Oct 2021 23:52:18 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D7B706120C;
 Thu, 21 Oct 2021 23:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634859814;
 bh=LE+sfzEXJlFl8jCsBBJvLQfsmo8JPatvzUNz5xSZVrk=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=TgMVshk590paFQtbeK7zsyr4l/2uZp8+iGE+Is7GOaqOs2fjIWdb1db0zUOZCD1D/
 qSIki3hnjNZxvH7hMUKP6OCN5hbiVGAv2XjSk4Vu4n2Brz1rBVrshn8bHukAQnfRRv
 anWSmxVujkZB4+3Vgc3zvaFf1bGC7CzMWQKe6CW34pKn5QSZJPQUjgeysNPUEJswMd
 t7htnv6dWAlApcY9+r9kUWKJKLIl3BAtQDDX9NUsRBx84qp+9TOpGx1yTzQZkj0kpU
 RPr0UXaSlLtDfKfBNDv1hq7rgvpN1ibPs6YRxvIs06BNymtP6Gi5hn9pZzMvTMTSzN
 l5WRtdh7ClJ1A==
Message-ID: <d70b28fb4392ac1aafb1b21d1b8da061be16104c.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: Steve French <smfrench@gmail.com>, Omar Sandoval <osandov@osandov.com>
Date: Thu, 21 Oct 2021 19:43:30 -0400
In-Reply-To: <CAH2r5msO7-QCXv6JQj2Tado9ZoWAHRkgq6-En18PeKSXFDdBLw@mail.gmail.com>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
 <YXHntB2O0ACr0pbz@relinquished.localdomain>
 <CAH2r5msO7-QCXv6JQj2Tado9ZoWAHRkgq6-En18PeKSXFDdBLw@mail.gmail.com>
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34) 
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 2021-10-21 at 18:15 -0500, Steve French wrote: > On
 Thu, Oct 21, 2021 at 5:21 PM Omar Sandoval <osandov@osandov.com> wrote: >
 > > > On Mon, Oct 18, 2021 at 03:50:15PM +0100, David Howells wrot [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mdhr4-00B51L-87
Subject: Re: [V9fs-developer] [PATCH 00/67] fscache: Rewrite index API and
 management system
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, David Howells <dhowells@redhat.com>,
 linux-mm <linux-mm@kvack.org>, Marc Dionne <marc.dionne@auristor.com>,
 linux-afs@lists.infradead.org, Shyam Prasad N <nspmangalore@gmail.com>,
 CIFS <linux-cifs@vger.kernel.org>, Matthew Wilcox <willy@infradead.org>,
 linux-cachefs@redhat.com, Trond Myklebust <trondmy@hammerspace.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 Kent Overstreet <kent.overstreet@gmail.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, Al Viro <viro@zeniv.linux.org.uk>,
 ceph-devel <ceph-devel@vger.kernel.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-nfs <linux-nfs@vger.kernel.org>, Dave Wysochanski <dwysocha@redhat.com>,
 LKML <linux-kernel@vger.kernel.org>, Steve French <sfrench@samba.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, 2021-10-21 at 18:15 -0500, Steve French wrote:
> On Thu, Oct 21, 2021 at 5:21 PM Omar Sandoval <osandov@osandov.com> wrote:
> > 
> > On Mon, Oct 18, 2021 at 03:50:15PM +0100, David Howells wrote:
> > However, with the advent of the tmpfile capacity in the VFS, an opportunity
> > arises to do invalidation much more easily, without having to wait for I/O
> > that's actually in progress: Cachefiles can simply cut over its file
> > pointer for the backing object attached to a cookie and abandon the
> > in-progress I/O, dismissing it upon completion.
> 
> Have changes been made to O_TMPFILE?  It is problematic for network filesystems
> because it is not an atomic operation, and would be great if it were possible
> to create a tmpfile and open it atomically (at the file system level).
> 
> Currently it results in creating a tmpfile (which results in
> opencreate then close)
> immediately followed by reopening the tmpfile which is somewhat counter to
> the whole idea of a tmpfile (ie that it is deleted when closed) since
> the syscall results
> in two opens ie open(create)/close/open/close
> 
> 

In this case, O_TMPFILE is being used on the cachefiles backing store,
and that usually isn't deployed on a netfs. That said, Steve does have a
good point...

What happens if you do end up without O_TMPFILE support on the backing
store? Probably just opting to not cache in that case is fine. Does
cachefiles just shut down in that situation?
-- 
Jeff Layton <jlayton@kernel.org>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
