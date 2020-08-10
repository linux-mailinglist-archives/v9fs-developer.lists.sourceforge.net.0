Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F514240990
	for <lists+v9fs-developer@lfdr.de>; Mon, 10 Aug 2020 17:34:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k59p1-0007Zv-Ol; Mon, 10 Aug 2020 15:34:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <smfrench@gmail.com>) id 1k59p0-0007Zh-Tg
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Aug 2020 15:34:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5WTYhGSMVJwaOGI5CfF/LhAkHD90jfpwgnfPX4Hecs4=; b=WpVgNGsewHbLFPjByAF6ADovBg
 FMI64r6Gq6XxfdB8Go8DP8+oKMpCH+qOgR15qmizqabWD7qZBqeCjrjRfZoxRto4KLmdS9ikKapMC
 xfEQTOTBDdaPGg0o/zXIQqr4fT2B7rvCNxCokk9osWARxYyp00jNL/f9fYpzQzz0ydPw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5WTYhGSMVJwaOGI5CfF/LhAkHD90jfpwgnfPX4Hecs4=; b=Pxitn0cqmXnRxu2J8oQ+eP0N7R
 QcW3+g2URKU34txZJ00kgIc2SS6IYMwCnIjuGAzuqzQoa74jxfCIGa0kP/fxCi7J8ya1Io0lA6UOJ
 XzkD77cNW2UM873UrSn0n4WTGTrMMdlK7tSTv15J6cRZI7kKIcqnOK6Xia81bSDl5+5Y=;
Received: from mail-io1-f48.google.com ([209.85.166.48])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k59oz-005n9J-Kb
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Aug 2020 15:34:46 +0000
Received: by mail-io1-f48.google.com with SMTP id j8so9314513ioe.9
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 10 Aug 2020 08:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5WTYhGSMVJwaOGI5CfF/LhAkHD90jfpwgnfPX4Hecs4=;
 b=SUqd4aq9Y6Av+Gv7ga8W5ylkM3EMuDB+BJKiZDlYcl88/yG7+n1hocgfPi2FLC+Vxx
 KqPoFLizRpDrrvQnQiwnl561zq27UuRh8UiqsCIrjxDmAuFJnRBl/DUzkplB4z4G7b9Q
 jc7U58KTucVI+gNlNrZukqTN/vkc4mBRHbDXl2OTOpJufnJriy9ap0BWG6XUUXmUipsK
 TVoTNnf58iia3wlyq6oUVjzJCFkxLz2VpA2zx08I9wplKHuxou/WV3K2uz/ioqL+Sskh
 6g11stI+pS9OhTnOPgH6HxIYKtKYfdcqu6n4sRawgxF0zuuxqz7wmHR/8ocnUyPutNez
 JFlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5WTYhGSMVJwaOGI5CfF/LhAkHD90jfpwgnfPX4Hecs4=;
 b=MGTBXYkc94fWi4BMfjZorYfwcUk8f4CVrgvo4aN4rLVWm/yU9ErkC3pYI1VDmBlbxC
 /OJ7fJldEMfYkCnfmiCUh9gRkSoaX+yp6t4XEadfDdZs9sVjmmzzGnt+3V2SuMCUZhBx
 2w08QHdDf/DsC6jzXI1PxrhKc8YIKKf97kjnGEuG5mkQDP6wjKAdASQhpScnTDtC25BW
 CxI4V324AR7NrhhdEK7iLIh5sm8bwP+7UkgHS2n8r9dYNbBtY396Ar3IgfvxfJOiZNB7
 lIYVPBXdTiemK3NVuO7nuIY8SCbW3q/GRPlPwJ2EjE2GKnz3sC7upkmGxzIRof7HXV/S
 r4eg==
X-Gm-Message-State: AOAM533QMgXIMOBLySTHWtaZUUNwrzXz765+1TUuqqAgXtBFfJdewr7R
 lO9XIiYJZZlLOUXYmFBiJhqZgNOzAEHZZuK5A7Y=
X-Google-Smtp-Source: ABdhPJx/72p6MbNErre05awlascVxCqkGhI8Z4HJDnMGlc4VJwJdcxlxvUk8VJQtBs+c1JaA8neSe/NM/cZiAC2o7ms=
X-Received: by 2002:a05:6638:bd1:: with SMTP id
 g17mr20791285jad.132.1597073672791; 
 Mon, 10 Aug 2020 08:34:32 -0700 (PDT)
MIME-Version: 1.0
References: <447452.1596109876@warthog.procyon.org.uk>
 <1851200.1596472222@warthog.procyon.org.uk>
 <667820.1597072619@warthog.procyon.org.uk>
In-Reply-To: <667820.1597072619@warthog.procyon.org.uk>
From: Steve French <smfrench@gmail.com>
Date: Mon, 10 Aug 2020 10:34:21 -0500
Message-ID: <CAH2r5msKipj1exNUDaSUN7h0pjanOenhSg2=EWYMv_h15yKtxg@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.48 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (smfrench[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.48 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1k59oz-005n9J-Kb
Subject: Re: [V9fs-developer] [GIT PULL] fscache rewrite -- please drop for
 now
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
Cc: CIFS <linux-cifs@vger.kernel.org>, linux-nfs <linux-nfs@vger.kernel.org>,
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, Dave Wysochanski <dwysocha@redhat.com>,
 LKML <linux-kernel@vger.kernel.org>, Matthew Wilcox <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

cifs.ko also can set rsize quite small (even 1K for example, although
that will be more than 10x slower than the default 4MB so hopefully no
one is crazy enough to do that).   I can't imagine an SMB3 server
negotiating an rsize or wsize smaller than 64K in today's world (and
typical is 1MB to 8MB) but the user can specify a much smaller rsize
on mount.  If 64K is an adequate minimum, we could change the cifs
mount option parsing to require a certain minimum rsize if fscache is
selected.

On Mon, Aug 10, 2020 at 10:17 AM David Howells <dhowells@redhat.com> wrote:
>
> Hi Linus,
>
> Can you drop the fscache rewrite pull for now.  We've seem an issue in NFS
> integration and need to rework the read helper a bit.  I made an assumption
> that fscache will always be able to request that the netfs perform a read of a
> certain minimum size - but with NFS you can break that by setting rsize too
> small.
>
> We need to make the read helper able to make multiple netfs reads.  This can
> help ceph too.
>
> Thanks,
> David
>


-- 
Thanks,

Steve


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
