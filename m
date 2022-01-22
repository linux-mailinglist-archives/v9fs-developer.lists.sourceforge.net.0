Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8CD496B7F
	for <lists+v9fs-developer@lfdr.de>; Sat, 22 Jan 2022 10:40:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nBCse-0007LF-Dn; Sat, 22 Jan 2022 09:40:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1nBCsd-0007L5-7f
 for v9fs-developer@lists.sourceforge.net; Sat, 22 Jan 2022 09:40:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NVi2o5bpejqCSEEy7qa8h7M9BtrHmJyAEdxB9JNfD0c=; b=AP7q8169HQfihoXE+pivj+ghnR
 mTEyYKsLWTTtyLU8S+rI7x6uTCn9jAdnLmPwQmZ9TH8KU+llkDtajnoBEs2ASRhMsBPDdQfovdyaz
 +KObzpacmnYIu76028lByCmp+pAFjDrQeD1j24FDnTmOjCa+S453nAZVgIWMP3A6sKHc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NVi2o5bpejqCSEEy7qa8h7M9BtrHmJyAEdxB9JNfD0c=; b=bl7x3vXvMeN5Q+mTLbq/6bnKIa
 0Ihj3QTc/Jfd/HlGleurBqo0JqxP9ee6uCDwpgDGYACep6oQTi+oGiE9NpZAH1CQ6aCq1kxi4W795
 pb6aftrRGB72mtlc0MfLGmSfMOM5fttILIjnSXxQSpD6lBW3BsifAUIK1NRqSTlymwO0=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nBCsa-0003VP-4x
 for v9fs-developer@lists.sourceforge.net; Sat, 22 Jan 2022 09:40:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D852260A76;
 Sat, 22 Jan 2022 09:40:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 44C43C004E1;
 Sat, 22 Jan 2022 09:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642844405;
 bh=henkmRl3HfTRAowTOP/RK23Q67yuCV3HA56VhpKoBks=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=NKM6qjRQaQm4rNU9/RrE7JODEuKQEHJpghqkSS1311lLhHxtdUZm4BSjgz+h8z2zQ
 QSVYgZs739kQqWfPYOZDTRxBUjgy7GeH/n1McqDHhBOWT21dqXVsuyyGty53wWjvOQ
 TSPqLmRCdBD3sU8D1PqbcKdPA1skGg89V0ZLvieurJbQjRbaa79MvZDYTxQcWJ8d/L
 Ym3D/50s55/IJ2MkUuZxH9Z4ppCLnNkOeAFoKvpxj3hLFn2yiYOHqY5PNTkquUSmK8
 fk5jmGpQN7/QEagAqziftFzzvkIN8iBFWOjl20RuaR7K8NCcZCZEiB+X+REN4HBN6H
 uNehTqqPl+qVA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 23234F60796; Sat, 22 Jan 2022 09:40:05 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <1339462.1642802244@warthog.procyon.org.uk>
References: <1339462.1642802244@warthog.procyon.org.uk>
X-PR-Tracked-List-Id: <linux-nfs.vger.kernel.org>
X-PR-Tracked-Message-Id: <1339462.1642802244@warthog.procyon.org.uk>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git
 tags/fscache-fixes-20220121
X-PR-Tracked-Commit-Id: cef0223191452b3c493a1070baad9ffe806babac
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 7fd350f6ff846f788ba5f6668bacf2ce4257ed8f
Message-Id: <164284440509.7666.8294766242390570357.pr-tracker-bot@kernel.org>
Date: Sat, 22 Jan 2022 09:40:05 +0000
To: David Howells <dhowells@redhat.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Fri, 21 Jan 2022 21:57:24 +0000:
 > git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git
 tags/fscache-fixes-20220121
 has been merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/7fd350f6ff846f788ba5f6668bacf2ce4257ed8f
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nBCsa-0003VP-4x
Subject: Re: [V9fs-developer] [GIT PULL] fscache: Fixes and minor updates
 for rewrite
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, Steve French <smfrench@gmail.com>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 Jeffle Xu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Fri, 21 Jan 2022 21:57:24 +0000:

> git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git tags/fscache-fixes-20220121

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/7fd350f6ff846f788ba5f6668bacf2ce4257ed8f

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
