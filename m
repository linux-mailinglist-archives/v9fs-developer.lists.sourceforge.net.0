Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F8F47ECAE
	for <lists+v9fs-developer@lfdr.de>; Fri, 24 Dec 2021 08:32:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n0f3q-0003bN-Mj; Fri, 24 Dec 2021 07:32:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1n0f3o-0003bH-Qx
 for v9fs-developer@lists.sourceforge.net; Fri, 24 Dec 2021 07:32:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fQFh70LIKS+fc6EM46i8xVd3yum4u2d4HWSgc/deHEg=; b=dHO6X+zszXxqT2dy1OFcQkYG+b
 dnvIUp5UEnIy1cblfco/gXJDj6u7IPn4ALYiYjpHr+mLle9XF77Ug+wMbLcPB3yL1MSDYeLcTpILL
 bnSByIh4ZR6B6mL6JcbsXtX3TTkR5U+CTDQptWOxIzySw7GZlxIt6eGMlJBjnUwZ7C2s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fQFh70LIKS+fc6EM46i8xVd3yum4u2d4HWSgc/deHEg=; b=YnU6jF3oQmQrYYfJJ+qf36G4tE
 bg4mVHr1QZSMrUJa61+rwV0Ya7tCd3ajvaIBQiydOyF083JlCkUDAgLq+ffgWNZbvpKC/wLZsYloT
 BDPzVUenyQZDlf66eBZG5e8Aa7kVc/GP+YaxsQkL7bUgSI5y+HayywjALjkzAAuN+XOA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0f3l-007wnV-DH
 for v9fs-developer@lists.sourceforge.net; Fri, 24 Dec 2021 07:32:16 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 63220C01E; Fri, 24 Dec 2021 08:32:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1640331124; bh=fQFh70LIKS+fc6EM46i8xVd3yum4u2d4HWSgc/deHEg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HJwVM3zcZXmAb5k5D0aVF+YqYcJUcZCWgq5t/ORw9j9S2gCVkzZAtPDcaVkxVEDi5
 3xscFEKhn3hUeXlTIwiS5uInYIRuUOnU4ju9xIRq7bxa0qnpbHRO9WftRgjyA6lMtd
 XSc3wiWX0ENospAbrewFLRxsBAPiCJnKqsQieWMm1pz218tqbPqslTAmZ5jaIXiMmU
 7kI7vAWUPSsB2jb5fCXFpfBaa2ovRFPAwFeKbZhkLYSwF8T79WA/vELvjVyS3ZaCvD
 XFV34Kp0rLLcI0s4C0PlwcAyfrq5AokVzeD+zUsFatTXDb2ZWzjANVEPV2zpPSUGV2
 15RHWGH49q9JQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id B3E4AC009;
 Fri, 24 Dec 2021 08:32:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1640331122; bh=fQFh70LIKS+fc6EM46i8xVd3yum4u2d4HWSgc/deHEg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FP5trq7+lSUifaeHJ07uIZXd/hreIq3qIDae8XcukWedgoNOPzD5mgZRJBLDLlQ7o
 yaIQPHrRhPY4bHPFDKNmdQqV35qGG/Tv7fYg097a3TY4DeJ2AeUU0bm9nNh7Jc4TnT
 lvEcAWdN89nj41jkX7VIU2+y9nr6FGO7xZJj6T14cuZFdPdBtpw/Eslo5SYlwMgR+n
 GH3ru1ThWqz6z+d6IGla514BKr0AezJhQALihsHwpuAh0S/7Cn5+khhYSOchgU3crr
 Y9TsJhQYbljaa7d2WEyb3MEpJPCunThbqvf2q4dOEZYk7hN/hb1CUqHrQho+a2jLYB
 5+JqlAs3sAyjw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 6bbcff1c;
 Fri, 24 Dec 2021 07:31:56 +0000 (UTC)
Date: Fri, 24 Dec 2021 16:31:40 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Vasily Averin <vvs@virtuozzo.com>
Message-ID: <YcV3XDFw5sMyvTVL@codewreck.org>
References: <076a9ce6-ae06-5b3e-f577-d993e55089f1@virtuozzo.com>
 <YcUCvUF10TKg2wDI@codewreck.org>
 <644227dc-4771-3111-aabd-20ac12b69a2d@virtuozzo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <644227dc-4771-3111-aabd-20ac12b69a2d@virtuozzo.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Vasily Averin wrote on Fri, Dec 24, 2021 at 10:08:57AM +0300:
 > > I'm not up to date with lock mechanisms, could you confirm I understand
 > > the flags right? > > - F_SETLK: tries to lock, on conflict [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1n0f3l-007wnV-DH
Subject: Re: [V9fs-developer] [PATCH] v9fs: handle async processing of
 F_SETLK with FL_SLEEP flag
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 linux-kernel@vger.kernel.org, "J. Bruce Fields" <bfields@fieldses.org>,
 kernel@openvz.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Vasily Averin wrote on Fri, Dec 24, 2021 at 10:08:57AM +0300:
> > I'm not up to date with lock mechanisms, could you confirm I understand
> > the flags right?
> > - F_SETLK: tries to lock, on conflict return immediately with error
> > - F_SETLKW|FL_SLEEP: tries to lock, on conflict wait for lock to become available
> > - F_SETLKW: not possible through flock/fcntl setlk, can happen otherwise?
> > but for 9p purpose same as above.
> > - F_SETLK|FL_SLEEP: tries to lock, on conflict ????? you'd want it to
> > return immediately but setup some callback to be woken up? how could
> > that work without passing some wake up struct? or just behave as plain
> > F_SETLK? but then FL_SLEEP has no purpose, I don't get it.
> 
> I apologize in advance for the long answer, but I tried to state all the details
> of the detected problem.
> 
> Below is description copy-pasted from comment above vfs_lock_file()

Thanks, I hadn't noticed this comment this morning.

> "
>  * To avoid blocking kernel daemons, such as lockd, that need to acquire POSIX
>  * locks, the ->lock() interface may return asynchronously, before the lock has
>  * been granted or denied by the underlying filesystem, if (and only if)
>  * lm_grant is set. Callers expecting ->lock() to return asynchronously
>  * will only use F_SETLK, not F_SETLKW; they will set FL_SLEEP if (and only if)
>  * the request is for a blocking lock. When ->lock() does return asynchronously,
>  * it must return FILE_LOCK_DEFERRED, and call ->lm_grant() when the lock
>  * request completes.

Ok so that's the part I was missing.
The file_lock struct will have fl_lmops->lm_grant set in this case and
we just need to remember that and call lm_grant when the lock has been set...

> They all are servers, and they can receive blocking lock requests from own clients.
> They all cannot process such requests synchronously because it causes server deadlock.
> In simplest form, if single threaded nfsd is blocked on processing such request,
> whole nfs server cannot process any other commands.

Note 9p does not have an fh_to_dentry op (no open by handle type of
calls, the protocol just has no way of dealing with it), so I believe
knfsd cannot re-export 9p filesystems and wouldn't be surprised if
others can't either -- as thus this all might not be an issue for you if
F_SETLK|FL_SLEEP users all are such servers


> One of our customers tried to export fuse/glusters via nfsd and reported about
> memory corruption in nfsd4_lock() function. We found few related bugs in nfsd,
> however finally we noticed that fuse blocks on processing such requests. 
> During investigation we have found that fuse just ignored F_SETLK command,
> handled FL_SLEEP flag and submitted blocking FUSE_SETLKW command.

I'm not sure I understand how upgrading to SETLKW is worse than dropping
the FL_SLEEP flag (I mean, I see it's bad as it wasn't what the server
expects, but while it will block a thread for an undefined period of
time and may cause deadlocks I don't see how it would cause memory
corruptions?)

> Answering on you question: it's ok to ignore of FL_SLEEP flag for F_SETLK command,

On the other hand, just clearing the FL_SLEEP flag like you've done for
9p will make the server think the lock has been queued when it hasn't
really been.
That means the client lock request will hang forever and never be
granted even when the lock becomes available later on, so unless I
misunderstood something here I don't think that's a reasonable fallback.
So...

> It would be even better to use posix_lock_file() instead of locks_lock_file_wait(),
> but I cannot do it without your assistance.

let's try to fix this properly instead, I'm happy to help.

Basically 9p does things in two steps:
 - first it tries to get the lock locally at the vfs level.
I'm not familiar with all the locking helpers we have at disposal, but
as long as the distinction between flock and posix locks is kept I'm
happy with anything here.

If that process is made asynchronous, we need a way to run more
9p-specific code in that one's lm_grant callback, so we can proceed onto
the second step which is...

 - send the lock request to the 9p server and wait for its reply
(note that the current code is always synchronous here: even if you
request SETLK without the SLEEP flag you can be made to wait here.
I have work in the closest to make some requests asynchronous, so
locking could be made asynchronous when that lands, but my code
introduced a race somewhere I haven't had the time to fix so this
improvement will come later)



What would you suggest with that?


-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
