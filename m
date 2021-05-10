Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8799D3784A0
	for <lists+v9fs-developer@lfdr.de>; Mon, 10 May 2021 12:53:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lg3XX-0001d9-NH; Mon, 10 May 2021 10:53:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lhenriques@suse.de>) id 1lg3XU-0001cz-MR
 for v9fs-developer@lists.sourceforge.net; Mon, 10 May 2021 10:53:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:In-Reply-To:
 Date:References:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uBKe9aemblfzVb7Z1k7Evt5ZCTu4UTiMP/HMl3mbyic=; b=GgAGtr8ofs4sgzl99lzJ+zI0Vq
 w/rz0Vw2OOgHzf2LeyxZaIHryFN1EGCRDPj8y7zOgrftLqsP6QocC3T/2ZL7mtp1PbucD9J+jjq6r
 g8Jq2+WvhIYZblj+BiyPJJDTR/bxQ0gne0UxuD58toWbW/RZUdFDQcYr6ry7y2nbkF3o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:In-Reply-To:Date:References:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uBKe9aemblfzVb7Z1k7Evt5ZCTu4UTiMP/HMl3mbyic=; b=jIRvde/pcNbC2waGnP+RTquLBv
 7BMOO9taqhkaB1mSvJRLA36MtA9ZTFpqn920vgDuXrJO8Oci2LnShVKlVorXlKyLuM857xtR99KZg
 FmBo+ougMFI7W/Ruj+vkyiicQ4CtJFdwsBzZfVMIeyKJYjbrQ0F02Zn0jMIZDGQcBCN4=;
Received: from mx2.suse.de ([195.135.220.15])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lg3XE-001MwU-OT
 for v9fs-developer@lists.sourceforge.net; Mon, 10 May 2021 10:53:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 906B8AFD5;
 Mon, 10 May 2021 10:53:03 +0000 (UTC)
Received: from localhost (brahms [local])
 by brahms (OpenSMTPD) with ESMTPA id de6ed6ea;
 Mon, 10 May 2021 10:54:36 +0000 (UTC)
From: Luis Henriques <lhenriques@suse.de>
To: Dominique Martinet <asmadeus@codewreck.org>
References: <87czu45gcs.fsf@suse.de> <YJPIyLZ9ofnPy3F6@codewreck.org>
 <87zgx83vj9.fsf@suse.de> <87r1ii4i2a.fsf@suse.de>
 <YJXfjDfw9KM50f4y@codewreck.org>
Date: Mon, 10 May 2021 11:54:36 +0100
In-Reply-To: <YJXfjDfw9KM50f4y@codewreck.org> (Dominique Martinet's message of
 "Sat, 8 May 2021 09:47:08 +0900")
Message-ID: <875yzq270z.fsf@suse.de>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1lg3XE-001MwU-OT
Subject: Re: [V9fs-developer] 9p: fscache duplicate cookie
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 David Howells <dhowells@redhat.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dominique Martinet <asmadeus@codewreck.org> writes:

> Luis Henriques wrote on Fri, May 07, 2021 at 05:36:29PM +0100:
>> Ok, I spent some more time on this issue today.  I've hacked a bit of code
>> to keep track of new inodes' qids and I'm convinced there are no
>> duplicates when this issue happens.
>
> Ok, that's good.
> Just to make sure what did you look at aside of the qid to make sure
> it's unique? i_ino comes straight from qid->path too so we don't have
> any great key available which is why I hadn't suggesting building a
> debug table.
> (... well, actually that means we'll never try to allocate two inodes
> with the same inode number because of how v9fs_qid_iget_dotl() works, so
> if there is a collision in qid paths we wouldn't see it through cookies
> collision in the first place. I'm not sure that's good? But at least
> that clears up that theory, sorry for the bad suggestion)
>

Ok, I should probably have added some more details in my email.  So,
here's what I did:

I've created a list (actually a tree...) of objects that keep track of
each new inode in v9fs_qid_iget_dotl().  These objects contain the inode
number, and the qid (type, version, path).  These are then removed from
the list in v9fs_evict_inode().

Whenever there's an error in v9fs_cache_inode_get_cookie(), i.e. when
v9inode->fscache == NULL, I'll search this list to see if that inode
number was there (or if I can find the qid.path and qid.version).  

I have never seen a hit in this search, hence my claim of not having a
duplicate qids involved.  Of course my hack can be buggy and I completely
miss it ;-)

>> OTOH, I've done another quick test: in v9fs_cache_inode_get_cookie(), I do
>> an fscache_acquire_cookie() retry when it fails (due to the dup error),
>> and this retry *does* succeed.  Which means, I guess, there's a race going
>> on.  I didn't managed to look too deep yet, but my current theory is that
>> the inode is being evicted while an open is triggered.  A new inode is
>> allocated but the old inode fscache cookie hasn't yet been relinquished.
>> Does this make any sense?
>
> hm, if the retry goes through I guess that'd make sense; if they both
> were used in parallel the second call should fail all the same so that's
> definitely a likely explanation.
>
> It wouldn't hurt to check with v9fs_evict_inode if that's correct...
> There definitely is a window where inode is no longer findable (thus
> leading to allocation of a new one) and the call to the
> fscache_relinquish_cookie() at eviction, but looking at e.g. afs they
> are doing exactly the same as 9p here (iget5_locked, if that gets a new
> inode then call fscache_acquire_cookie // fscache_relinquish_cookie in
> evict op) so I'm not sure what we're missing.
>
>
> David, do you have an idea?

I've just done a quick experiment: moving the call to function
v9fs_cache_inode_put_cookie() in v9fs_evict_inode() to the beginning
(before truncate_inode_pages_final()) and it seems to, at least, narrow
the window -- I'm not able to reproduce the issue anymore.  But I'll need
to look closer.

And yeah, I had checked other filesystems too and they seem to follow this
pattern.  So either I'm looking at the wrong place or this is something
that is much more likely to be triggered by 9p.

Cheers,
-- 
Luis

>> If this theory is correct, I'm not sure what's the best way to close this
>> race because the v9inode->fscache_lock can't really be used.  But I still
>> need to proof this is really what's happening.
>
> Yes, I think we're going to need proof before thinking of a solution, I
> can't think of anything simple either.
>
>
> Thanks again for looking into it,
> -- 
> Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
