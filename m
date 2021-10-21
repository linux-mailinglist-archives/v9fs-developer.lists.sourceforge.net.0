Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF448436E24
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 01:16:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdhIC-0001JN-DA; Thu, 21 Oct 2021 23:16:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <smfrench@gmail.com>) id 1mdhIA-0001JE-O4
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Oct 2021 23:16:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NGd3ZBTVw8WerW8TiXkapULoiLMOJ6XxJFj9gFvuuSU=; b=HCd4LL1i2ZVhIOhmgoaZtoXyex
 ejUYfRjLofKK1rH1jlp9/CftQYDDsT2UG0xUiaRTaqAw9Bolbeh3qgZB3L1sS7Vj1zIPwBfzghi6n
 GSOo5CkNOttKOPRi/TISY6UCWnV4bWIC8OvBk3oqn1c6Aj9yi7A5PoG42WgbiKR7EaW0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NGd3ZBTVw8WerW8TiXkapULoiLMOJ6XxJFj9gFvuuSU=; b=gfg7kTuUZgshbyaCj9d+aXNFdr
 9J3IQGO0j1oUo02lyaI5A9/41Txwd2kyqLknqbeW/2bMF4aFAo/xdM4VdWtKzAdrCJNDqHcyW6EcG
 HgqCH/yDTrJIl3kw6KXBFgiFLx0muczqsY5IEgIsrD6Egpn2jn2k05Oc+E9pEzytcLlI=;
Received: from mail-lf1-f51.google.com ([209.85.167.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mdhI7-00B1zC-EZ
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Oct 2021 23:16:10 +0000
Received: by mail-lf1-f51.google.com with SMTP id br29so1338963lfb.7
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 21 Oct 2021 16:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NGd3ZBTVw8WerW8TiXkapULoiLMOJ6XxJFj9gFvuuSU=;
 b=b2s6FHWu+usXqQrC6G5oR1QXzV421vmzu616cj0TNoasagpoWnKOEKbYxv6lwcqPeI
 3rORErL7fa/RFd0y2Vi9iFsS945DYpKaBv5nii1hrDWFRTJAvwghzmPtEJj+WMAEM17L
 /O3Sh1kCF4mjJgVQs5ZVXMKHMXWjelDAnQuriR3P4qbXBgow863UHNut4GWOwsAcq3R8
 LkWsfmC9oiosn2tFEKgiUpbhG4Nj1FZGqH8d5l/mF+MDgVDszmLDzMmBdqz5dfZydR6W
 CwiG1vdp59S9FmUIPQ76gL5GOhXou9LfjHasOMDZ9f3WorvSSWSHDMjI2c/fnqLqoXEM
 8naQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NGd3ZBTVw8WerW8TiXkapULoiLMOJ6XxJFj9gFvuuSU=;
 b=ymcFOJxDmYUvajyffLmK1ToLM1/duUwrndhF9psQUJ3U5I0e0ruYVVexk6l0L1vcQy
 HH0Nl/Jl5vBrXEXAc7jVqzPSscEZ4Xeu51qdqGpbis2rsCI8DEwjAPZx5WqPI9XMUacE
 vLy68DAe+mgdRxXXl/H5Lt49wUDRju/RifteVuhQEmc1mdl9Ibifa1EBR4u7aCcjnP99
 YVaeR6EEE9DdW0rgE68ANQb3pMToiqGikjsq9XG+qpcnkbNpNcZKiz96WHyw85h9pkBI
 k5i1+2K+XCpb35Dml/42+sQWjbvGLvSXNXPT+RgptegrkSqO5nNJmFuDQE8FWn+Aa7vP
 5wRw==
X-Gm-Message-State: AOAM532kAPkhE5F0/rYXUqIhdJ14vfrd3QEzQqqpGq712nw78f7Df9aB
 aHhkAaKyaVKxAMhalAgnr6f+ljdkkWlw0DXDWdQ=
X-Google-Smtp-Source: ABdhPJwZpcQ1KdeVcaHk764w6WspHm/7cDejlBv/A5lS6M8tifVYkMndPvZos9ePSqOr5Sy9U5NwiVeDSIz4sIygGiM=
X-Received: by 2002:a05:6512:3763:: with SMTP id
 z3mr8185733lft.601.1634858160588; 
 Thu, 21 Oct 2021 16:16:00 -0700 (PDT)
MIME-Version: 1.0
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
 <YXHntB2O0ACr0pbz@relinquished.localdomain>
In-Reply-To: <YXHntB2O0ACr0pbz@relinquished.localdomain>
From: Steve French <smfrench@gmail.com>
Date: Thu, 21 Oct 2021 18:15:49 -0500
Message-ID: <CAH2r5msO7-QCXv6JQj2Tado9ZoWAHRkgq6-En18PeKSXFDdBLw@mail.gmail.com>
To: Omar Sandoval <osandov@osandov.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Oct 21, 2021 at 5:21 PM Omar Sandoval wrote: > > On
 Mon, Oct 18, 2021 at 03:50:15PM +0100, David Howells wrote: > However, with
 the advent of the tmpfile capacity in the VFS, an opportunity [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.51 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [smfrench[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.51 listed in wl.mailspike.net]
X-Headers-End: 1mdhI7-00B1zC-EZ
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
 CIFS <linux-cifs@vger.kernel.org>, Jeff Layton <jlayton@redhat.com>,
 Matthew Wilcox <willy@infradead.org>, linux-cachefs@redhat.com,
 Trond Myklebust <trondmy@hammerspace.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 Kent Overstreet <kent.overstreet@gmail.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, Al Viro <viro@zeniv.linux.org.uk>,
 ceph-devel <ceph-devel@vger.kernel.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-nfs <linux-nfs@vger.kernel.org>, Dave Wysochanski <dwysocha@redhat.com>,
 Jeff Layton <jlayton@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Steve French <sfrench@samba.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Oct 21, 2021 at 5:21 PM Omar Sandoval <osandov@osandov.com> wrote:
>
> On Mon, Oct 18, 2021 at 03:50:15PM +0100, David Howells wrote:
> However, with the advent of the tmpfile capacity in the VFS, an opportunity
> arises to do invalidation much more easily, without having to wait for I/O
> that's actually in progress: Cachefiles can simply cut over its file
> pointer for the backing object attached to a cookie and abandon the
> in-progress I/O, dismissing it upon completion.

Have changes been made to O_TMPFILE?  It is problematic for network filesystems
because it is not an atomic operation, and would be great if it were possible
to create a tmpfile and open it atomically (at the file system level).

Currently it results in creating a tmpfile (which results in
opencreate then close)
immediately followed by reopening the tmpfile which is somewhat counter to
the whole idea of a tmpfile (ie that it is deleted when closed) since
the syscall results
in two opens ie open(create)/close/open/close


-- 
Thanks,

Steve


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
