Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 776A0462017
	for <lists+v9fs-developer@lfdr.de>; Mon, 29 Nov 2021 20:15:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mrm7r-0006oH-0Z; Mon, 29 Nov 2021 19:15:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <torvalds@linuxfoundation.org>) id 1mrm7p-0006o0-DO
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 19:15:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A1KpMLhPpZ3DtBAJ2H7WA1+eK6RBPvYL8JCpapFonpw=; b=g1oNXhIfgMIFtSByWwdhqqsSCr
 LFCFlR4YF8ihrH8Q3r8vBZrIQghdWwC7F9bMXSv8l3v5+3uZyMa/3miP2Snx3OntVpslH3afNQXTo
 YmHM4BWOA3FGRASW68HZmYW5IOUwirulAYSIBRFqeYcPfPsQsZS+aLCa9otuHGw3Q3As=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A1KpMLhPpZ3DtBAJ2H7WA1+eK6RBPvYL8JCpapFonpw=; b=CrIlweRFcRX8nJNfv8zTezXSg4
 +544E9yMBdN2QozRY2wGdWSvUwZ+mxRMBLuQEHs6OLdCbRnGNAxgL+IUu5AJb3LDNDWLWtI1jmpYJ
 ++GlB+oOlCx1T5HiQ5fvVdB68zGZV+jbVM1TpoaIe8akqE6ya0AfOlPlUbpBa/Dp92DU=;
Received: from mail-ed1-f52.google.com ([209.85.208.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mrm7L-0001VC-9j
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 19:15:41 +0000
Received: by mail-ed1-f52.google.com with SMTP id r25so11017950edq.7
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 29 Nov 2021 11:15:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A1KpMLhPpZ3DtBAJ2H7WA1+eK6RBPvYL8JCpapFonpw=;
 b=hYrTDwhmtIHMqqbXGO1Kse+Z0mztn57tvq1yPxTQ6q8If5SiUN3r2mIlQQuhqQ5Ciu
 K5ZjiwPNhDNHwoG8b/skXzWnqGGnw5Xo6Kz7rDlvP/WRSBwiwJnbIMXZ+5EJLE2YnPsh
 8oCcdh7mNJuIoeX8m73ktIFQqXot2Q8wW5BQM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A1KpMLhPpZ3DtBAJ2H7WA1+eK6RBPvYL8JCpapFonpw=;
 b=i3wCK53gDSUik2a0bABYxLKyXJGTrdbbduBhbZdppg6FlIWt9br2UAP+tVon+VqVkk
 0FavjQxigDZHoQlFdLYPHJEn3FPSpK+5NN/6dN918dMsz5TM+CuF9dhNN15nJL7mp+IY
 6u4DkWeOAooZOoGwWohg5C9yhrPA1o/rcvCrX5lYPj/dkA8u/4iB6KBn+l6Po7mUHJvc
 80bEtcXRyf40RatyxMpa3XExwqQ4oCxilul1KfW5xS6IZ/yUng+mPeA9tT0VmaCYHXJ3
 FHRiHRzNASiqJkXBJpu/Rcywhh531f7Y4B1MLc/YlcJxH7sRomhBTRYwlAqGA9ut00n7
 6iLw==
X-Gm-Message-State: AOAM5313smPbHzHITByS/PdZ55jCbiZeMIE84O+nVsSMqAYVvRkwrRhS
 bS06HvyLekBVh85Zdvd5LtR5lTEkNIMUBsQUeFw=
X-Google-Smtp-Source: ABdhPJzLzlUxdyk3CK3InwRFz9elblS0NreqEx6Cd2M7WPxQgqp1K/ofsP/S6zMXLwRZ1BETUcyOFg==
X-Received: by 2002:a17:906:608:: with SMTP id
 s8mr63748778ejb.405.1638209584949; 
 Mon, 29 Nov 2021 10:13:04 -0800 (PST)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com.
 [209.85.221.52])
 by smtp.gmail.com with ESMTPSA id gb42sm7783999ejc.49.2021.11.29.10.13.01
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 Nov 2021 10:13:02 -0800 (PST)
Received: by mail-wr1-f52.google.com with SMTP id q3so15903821wru.5
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 29 Nov 2021 10:13:01 -0800 (PST)
X-Received: by 2002:adf:9d88:: with SMTP id p8mr36748101wre.140.1638209581186; 
 Mon, 29 Nov 2021 10:13:01 -0800 (PST)
MIME-Version: 1.0
References: <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
In-Reply-To: <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 29 Nov 2021 10:12:45 -0800
X-Gmail-Original-Message-ID: <CAHk-=whGOEEb4n2_y3mnrmeNx4HYjRA-m=xMPDQD=bHWfB5chw@mail.gmail.com>
Message-ID: <CAHk-=whGOEEb4n2_y3mnrmeNx4HYjRA-m=xMPDQD=bHWfB5chw@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Headers-End: 1mrm7L-0001VC-9j
Subject: Re: [V9fs-developer] [PATCH 00/64] fscache, cachefiles: Rewrite
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Marc Dionne <marc.dionne@auristor.com>,
 linux-afs@lists.infradead.org, Shyam Prasad N <nspmangalore@gmail.com>,
 CIFS <linux-cifs@vger.kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-cachefs@redhat.com,
 Trond Myklebust <trondmy@hammerspace.com>,
 v9fs-developer@lists.sourceforge.net, Eric Van Hensbergen <ericvh@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>, "open list:NFS, SUNRPC,
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

On Mon, Nov 29, 2021 at 6:22 AM David Howells <dhowells@redhat.com> wrote:
>
> The patchset is structured such that the first few patches disable fscache
> use by the network filesystems using it, remove the cachefiles driver
> entirely and as much of the fscache driver as can be got away with without
> causing build failures in the network filesystems.  The patches after that
> recreate fscache and then cachefiles, attempting to add the pieces in a
> logical order.  Finally, the filesystems are reenabled and then the very
> last patch changes the documentation.

Thanks, this all looks conceptually sane to me.

But I only really scanned the commit messages, not the actual new
code. That obviously needs all the usual testing and feedback from the
users of this all..

                    Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
