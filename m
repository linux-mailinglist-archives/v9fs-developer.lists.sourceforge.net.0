Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D4FE64FB0BA
	for <lists+v9fs-developer@lfdr.de>; Mon, 11 Apr 2022 00:55:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ndgT0-0000FD-NW; Sun, 10 Apr 2022 22:55:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1ndgSy-0000F3-Lm
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Apr 2022 22:55:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/TFwqpjQ2c/XbjkybhTOL9F0BbKaoZelQEB5XR4NO2o=; b=DgNbkjTxDLfKQG7HdWx1QOQriW
 Ua1KpJdiw7d85qHa/UCkCOM4xBa0zCCSfVc3GagTtn9NEnNu68bJg36mDTpvcxlrHut82TWo4eI16
 HUKoFXC7KDQAvXJNJUiq4UWcEziMkIPbkzL3wty17cgTn3O3OlsOhThD/7TMFPL6HUfE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/TFwqpjQ2c/XbjkybhTOL9F0BbKaoZelQEB5XR4NO2o=; b=gmJOMKCyeuYCoeSjFnog2Y+uQf
 EiGaQOYErrxBN7c94VlQNQypUfSauboPTS+tJ+hdAQ6abog0iqwwKKF+tXRSql0dkAmB/6ju7BjtM
 bK55tt3S6ovX11OERQEqRs9kCRBlmwLWdKC2+8XXohRPz2/jUzXoxmKOuORdHGynEAfI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ndgSr-00051D-Rq
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Apr 2022 22:55:31 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 85B36C021; Mon, 11 Apr 2022 00:55:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1649631311; bh=/TFwqpjQ2c/XbjkybhTOL9F0BbKaoZelQEB5XR4NO2o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DdQxknF8c5E5y8Rt9M4hIiL0IdYl/WjsghQKDKUicOg2ozLRQ+Lpql7urObG9Stu5
 a9jYN+cO+ttNsovxzf6TkRls+9zk+PDEsdQFTc63+sM8HAIVGPHfZ9ppFFScTNNWrN
 Uz7mVQ/VqIm5m4BUzR+kljWEdWlxlDUoDdxTyzsEMT3P/bzQMQsdGtYidHwUerTWgD
 kv3UNnBleyoCrJThHoDLA4+L39fT8eLNnBN/1Q2b+Lq1TDsv5R2jpYWM4yRHSUw5v7
 6Xc3TbJ+QYsQXUvc1qfC0KjonUgxeI7bZlVd4GOQUN/pbR1YROG7K/fJ4OXXB4zunD
 JuL5Ke5IpHhvQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id D0851C009;
 Mon, 11 Apr 2022 00:55:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1649631309; bh=/TFwqpjQ2c/XbjkybhTOL9F0BbKaoZelQEB5XR4NO2o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jGgeP9srjGzbGXebFnW4o1uQvo4gSg4sDgWNrBgx4It6QGoYDvUbXfhPMltb2yzF/
 bXYxoQ66FJTeUxtrpdt03RTFG2uJD7Yvyx3XZoOK19tVmrXi3z1bP10Oc/TnRixAJd
 ANrmPMiPo0yciuRP5ZHe6r0k1BffxmVY8TI2Y9TsIy4kUYsfFucTBsTFQxcND01zfb
 Jf2pcssq5x/vOmI9OT8kXPFPyN+Zj9I22GXBy40UUwj7fsMx6AqAu3ALS6rrS0dSoM
 wrFvP7T4NykSc8jSyc+yvWBxchNi2/sAYqMpHVkaWZYyVMWEeyG+MUkIsnobagZxmS
 MrzAGANLqN13Q==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 4ae191f4;
 Sun, 10 Apr 2022 22:55:02 +0000 (UTC)
Date: Mon, 11 Apr 2022 07:54:47 +0900
From: asmadeus@codewreck.org
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YlNgN5f1KnT1walD@codewreck.org>
References: <CAAZOf26g-L2nSV-Siw6mwWQv1nv6on8c0fWqB4bKmX73QAFzow@mail.gmail.com>
 <3791738.ukkqOL8KQD@silver> <9591612.lsmsJCMaJN@silver>
 <1966295.VQPMLLWD4E@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1966295.VQPMLLWD4E@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Thanks for keeping it up! Christian Schoenebeck wrote on Sun,
 Apr 10, 2022 at 06:18:38PM +0200: > > I used git-bisect to identify the commit
 that broke 9p behaviour,
 and it is > > indeed this one: > > > > commit eb497943fa2158
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1ndgSr-00051D-Rq
Subject: Re: [V9fs-developer] 9p fs-cache tests/benchmark (was: 9p fscache
 Duplicate cookie detected)
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
Cc: lucho@ionkov.net, David Kahurani <k.kahurani@gmail.com>, ericvh@gmail.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, David Howells <dhowells@redhat.com>,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Thanks for keeping it up!

Christian Schoenebeck wrote on Sun, Apr 10, 2022 at 06:18:38PM +0200:
> > I used git-bisect to identify the commit that broke 9p behaviour, and it is
> > indeed this one:
> > 
> > commit eb497943fa215897f2f60fd28aa6fe52da27ca6c (HEAD, refs/bisect/bad)
> > Author: David Howells <dhowells@redhat.com>
> > Date:   Tue Nov 2 08:29:55 2021 +0000
> > 
> >     9p: Convert to using the netfs helper lib to do reads and caching

Yes, quite a few things changed with that.

> I looked into the errors I get, and as far as I can see it, all misbehaviours
> that I see, boil down to "Bad file descriptor" (EBADF) errors being the
> originating cause.
> 
> The easiest misbehaviours on the guest system I can look into, are errors
> with the git client. For instance 'git fetch origin' fails this way:

FWIW I didn't report but did try to reproduce, on my machines (tried a
couple) booting on a small alpine rootfs over 9p works, and I tried some
git clone/git fetch of variying sizes of local repo (tmpfs in VM -> 9p
mount of tmpfs on host) to no avail.
Perhaps backing filesystem dependant? qemu version? virtfs access options?

It's all extremely slow though... like the final checkout counting files
at less than 10/s

> ...
> write(3, "d16782889ee07005d1f57eb884f4a06b"..., 40) = 40
> write(3, "\n", 1)                       = 1
> close(3)                                = 0
> access(".git/hooks/reference-transaction", X_OK) = -1 ENOENT (No such file or directory)
> openat(AT_FDCWD, ".git/logs/refs/remotes/origin/master", O_WRONLY|O_CREAT|O_APPEND, 0666) = 3
> openat(AT_FDCWD, "/etc/localtime", O_RDONLY|O_CLOEXEC) = 7
> fstat(7, {st_mode=S_IFREG|0644, st_size=2326, ...}) = 0
> fstat(7, {st_mode=S_IFREG|0644, st_size=2326, ...}) = 0
> read(7, "TZif2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\t\0\0\0\t\0\0\0\0"..., 8192) = 2326
> lseek(7, -1467, SEEK_CUR)               = 859
> read(7, "TZif2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\t\0\0\0\t\0\0\0\0"..., 8192) = 1467
> close(7)                                = 0
> write(3, "d8a68c5027ef629d93b9d9519ff4da95"..., 168) = -1 EBADF (Bad file descriptor)
> ...
> error: cannot update the ref 'refs/remotes/origin/master': unable to append to '.git/logs/refs/remotes/origin/master': Bad file descriptor
> 
> I tried to manually replicate those file access operations on that
> .git/logs/refs/remotes/origin/master file in question, and it worked. But when
> I look at the strace output above, I see there is a close(3) call just before
> the subsequent openat(".git/logs/refs/remotes/origin/master") call returning 3,
> which makes me wonder, is this maybe a concurrency issue on file descriptor
> management?

hmm, in cache=loose case write should just be updating the page cache
for buffers to be flushed later, so this is definitely weird.

If you can reproduce well enough for this, could you first confirm that
the EBADF comes from the client and not qemu? either mounting with debug
or getting traces from qemu at a protocol level would get that.

If it's local there are only so many places EBADF can come from and it
should be possible to trace it back with e.g. perf probe or bpftrace,
but even if we confirm that e.g. the process' fd table is messed up it
won't tell us why it was, so it's going to be annoying... I'd really
like to be able to reproduce this somehow :/

-- 
Dominique



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
