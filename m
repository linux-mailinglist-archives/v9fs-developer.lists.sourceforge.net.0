Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAF63812C2
	for <lists+v9fs-developer@lfdr.de>; Fri, 14 May 2021 23:17:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lhfBV-00081N-VC; Fri, 14 May 2021 21:17:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1lhfBU-00081A-IK
 for v9fs-developer@lists.sourceforge.net; Fri, 14 May 2021 21:17:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dL1H2PZzXE0N0DMQKjto285w9JuAHYL1WG3d16tDeVw=; b=Q0RKDcuOTdfPvne80+oBfxQofR
 KCZhlvtMgVCnZIdDrG5xDlrBJFWrN+WbbJdhm85D9rHb7AK3ePhNzjhyuQPVJm6V0D9e8Xc49V7Gi
 kB9LHni0LmgrXQJhZyB+6Tjp8ZfdBROF3S5FktyncGPyweTLXSxSimF+UKgLaUcae818=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dL1H2PZzXE0N0DMQKjto285w9JuAHYL1WG3d16tDeVw=; b=WXBdszcNDaDucm/MqwY7DoDaau
 i4wKcBDA8snPKvTvTYPmjrxblKR6Vx3zq/OB53e9Ila73wMq/ClgzKEEiFo+QqOc7mIBy5JIYZVcC
 ++oei/iDWxKwBS1s57TxCYFs51upL1DpWqSbTYhqVdkXsm38P6ArlftQnCxjre63oL5M=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lhfBQ-008fON-UX
 for v9fs-developer@lists.sourceforge.net; Fri, 14 May 2021 21:17:26 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 485C5C020; Fri, 14 May 2021 23:17:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1621027034; bh=dL1H2PZzXE0N0DMQKjto285w9JuAHYL1WG3d16tDeVw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Asfce5m2lJ6vo/01moa0fWmCro1iGBwz341MAneuLLdTRbTu2Kz2TEYRLaSc1iDjH
 PaPDUStB2q/pk7GTOAsdoG1R/VN7++lLiRqivaiVW19orXdKTdxQ26FSrLF/gBw15V
 6GNvHsE37eY3fU5fMiOeZemclRC5/8UuwFlJRLf/R8p6mWWXFgLKXVB0s9PM38svIj
 21heO2yHdRJNR7Ip5D9OHaiwELu/UA69CNyRU52b/pbRbBWopRNHE/puJmhxcxgeDc
 7t+u6nxkQ+ZAKEExjtppNBEpUFxZbNhKnMtQWQGuy6odgOsDMCfTBGmlE8SvELrVPk
 3+VE/S8WN8a+g==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id CA57CC009;
 Fri, 14 May 2021 23:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1621027033; bh=dL1H2PZzXE0N0DMQKjto285w9JuAHYL1WG3d16tDeVw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RysAxk6TeP7g9Y4tq/B5HNbYv0jlEPjxL0AkpYKrLU/gYRWSWisondWUrL2/JCvrU
 PJT5+RLAy9jRC2b+0FyW3gY5e7Axp0FpBw+yC0ED7EGScK7v9sVYZG6YUBawbB6J+9
 MgcLX6cuRrTKBKj4HYw/HZ3Afdty5blA03lyOaZLMIkAFNizU2kADt/m2PY6Vbq25y
 OwoV7zuyMdsMz9vPmF71/aloI0TVmnSDy+p09d+OfkIPEf/fZq9fExatabnhOXHRxP
 HlO42zA34va6eD32/liF00qVCjrG0vLVLsN9GhKxuPcLsrMvxat9u7NzCNHfXa+cgN
 Tmpbk40qP3SeQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id b3975c6a;
 Fri, 14 May 2021 21:17:07 +0000 (UTC)
Date: Sat, 15 May 2021 06:16:52 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>
Message-ID: <YJ7oxGY/eosPvCiA@codewreck.org>
References: <YJvb9S8uxV2X45Cu@zeniv-ca.linux.org.uk>
 <YJvJWj/CEyEUWeIu@codewreck.org> <87tun8z2nd.fsf@suse.de>
 <87czu45gcs.fsf@suse.de>
 <2507722.1620736734@warthog.procyon.org.uk>
 <2882181.1620817453@warthog.procyon.org.uk>
 <87fsysyxh9.fsf@suse.de>
 <2891612.1620824231@warthog.procyon.org.uk>
 <2919958.1620828730@warthog.procyon.org.uk>
 <87bl9dwb1r.fsf@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87bl9dwb1r.fsf@suse.de>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1lhfBQ-008fON-UX
Subject: Re: [V9fs-developer] What sort of inode state does ->evict_inode()
 expect to see? [was Re: 9p: fscache duplicate cookie]
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
 Luis Henriques <lhenriques@suse.de>, David Howells <dhowells@redhat.com>,
 Al Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Aneesh,

I'm going to rely on your memory here... A long, long time ago (2011!),
you've authored this commit:
-------
commit ed80fcfac2565fa866d93ba14f0e75de17a8223e
Author: Aneesh Kumar K.V <aneesh.kumar@linux.vnet.ibm.com>
Date:   Wed Jul 6 16:32:31 2011 +0530

    fs/9p: Always ask new inode in create
    
    This make sure we don't end up reusing the unlinked inode object.
    The ideal way is to use inode i_generation. But i_generation is
    not available in userspace always.
    
    Signed-off-by: Aneesh Kumar K.V <aneesh.kumar@linux.vnet.ibm.com>
    Signed-off-by: Eric Van Hensbergen <ericvh@gmail.com>
-------

Do you happen to remember or know *why* you wanted to make sure we don't
reuse the unlinked inode object?

I'm asking because that's causing problems with (at least) fscache
cookie, iget5_locked() gets us a new inode in v9fs_qid_iget_dotl()
and tries to get a new cookie before the evict has happened and
relinquished the former inode's.
There's also problems with coherency in sight -- evict is also in charge
of flushing all dirty pages, so the new inode can in theory issue IO and
read from server data which has been written by another process on the
same client and while 9p isn't known for coherency with multiple clients
it's a different story with a single one! (didn't reproduce that one)

Anyway, it'd be great to know why you did that so we can try another
workaround.
In theory I'd love to have qemu and others export fsid + a fhandle from
name_to_handle_at that includes i_generation and full inode number in
the qid path, but we're limited by the 64bits of the protocol so it's a
tough one... In practice I don't see generation being used all that much
by filesystems to reuse inode numbers though, so wondering which is the
most problematic?



You can find the rest of the thread here if you're not subscribed to
v9fs-developer or linux-fsdevel:
https://lkml.kernel.org/r/87czu45gcs.fsf@suse.de



Luis Henriques wrote on Fri, May 14, 2021 at 05:10:56PM +0100:
> So, from our last chat on IRC, we have the following happening:
> 
> v9fs_vfs_atomic_open_dotl
>   v9fs_vfs_lookup
>     v9fs_get_new_inode_from_fid
>       v9fs_inode_from_fid_dotl
>         v9fs_qid_iget_dotl
> 
> At this point, iget5_locked() gets called with the test function set to
> v9fs_test_new_inode_dotl(), which *always* returns 0.  It's still not
> clear to me why commit ed80fcfac256 ("fs/9p: Always ask new inode in
> create") has introduced this behavior but even if that's not correct, we
> still have a race regarding cookies handling, right?
> 
> I'm still seeing:
> 
> CPU0                     CPU1
> v9fs_drop_inode          ...
> v9fs_evict_inode         /* atomic_open */
>                          v9fs_cache_inode_get_cookie <= COLLISION
> fscache_relinquish

Do you mean you still have that problem after ed80fcfac256 has been
reverted?

> So, the question remains: would it be possible to do the relinquish
> earlier (->drop_inode)?  Or is 9p really shooting itself in the foot by
> forcing iget5_locked() to always create a new inode here?

Ugh that is the kind of things I don't want to experiment with...
->drop_inode() seems to be called with i_lock taken and meant to be just
a test, not something that can wait, but from what I'm reading it might
be possible to set I_WILL_FREE, drop the lock, do our stuff and reaquire
the lock at the end.. perhaps? It looks like inode lookup will just loop
around on ilookup5_nowait while I_WILL_FREE is set so new inodes can't
be taken at this point, it's a de-facto spin lock with iget5_locked and
friends.
I have no idea what will break though, I'd really rather leave it to the
vfs and have 9p do the right thing with inode recycling.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
