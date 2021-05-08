Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C13376DEE
	for <lists+v9fs-developer@lfdr.de>; Sat,  8 May 2021 02:47:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lfB89-0003KC-8y; Sat, 08 May 2021 00:47:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <asmadeus@codewreck.org>) id 1lfB88-0003K5-3I
 for v9fs-developer@lists.sourceforge.net; Sat, 08 May 2021 00:47:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HnjLIramDXgnK51KmV8EqpAtXbk8rOEM4anA/029GCU=; b=Qw4zW4EGWBz5EPeGgMnEG7wnYa
 P1odglhOe+Nfyb0aIX1Svl5D7cTA6SKVOs9IcdRdJTY1cg2jVe2tixIUahkOijQ52ROYvNcOZQbBm
 oAFy9mr3CHYha78GRGttGQHbKJQqVJyMAw9gWybgrLRFEMKhhEzYm5TkV2wcqEnVwZZU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HnjLIramDXgnK51KmV8EqpAtXbk8rOEM4anA/029GCU=; b=lJXxacqpQif6jUJRCCe37remF6
 cPPdrRJHMCT4Q5qXP/bbNFpcW2XlFYv79qRXI4tn8oeLCJuR+Qh1WUq7KmPkeA+FkfjSMG90ooIay
 4uAZMEuNi+pn4coMesFH1IFShQXBUhQeXeSH4B6yArsU5mYhPG+Iu3pwKec5fh5WlVSk=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lfB84-0006V6-CA
 for v9fs-developer@lists.sourceforge.net; Sat, 08 May 2021 00:47:39 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 61331C009; Sat,  8 May 2021 02:47:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1620434850; bh=HnjLIramDXgnK51KmV8EqpAtXbk8rOEM4anA/029GCU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iAQNurAW8d6cufW+qRdOf/5sdfWLDp16nV9y7s8gFesjuXlX5QnWkomLxpzhPyerJ
 v/AsgwryLp6gzjmt6axdTpTlEUdWpYEcllsjKrgw4Udtbk6isSFvsO+atdzMrjejmA
 8yzhrllDiIQwZ7DeutWudQJv9plzxVARiS96RaFu39Uf0Rucu0SL9thw8plZ2Rg3rP
 0+7K4uL4UehUHoOxymZix7V+wODMN5Pl3lktWUfGuBT5uR/KTFwOfHio+qd2yBzDOI
 h4ixC2togfdMyKv61C/E1nME2eQwiDT/XgtJvXfqh6Q9G4Sfkn+EA33EsJjDCWX2So
 YKjzG8aGN1chA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 82401C009;
 Sat,  8 May 2021 02:47:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1620434849; bh=HnjLIramDXgnK51KmV8EqpAtXbk8rOEM4anA/029GCU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GAA8JFqCi17AXVbXoUjb09Kyi7dFEuVGzAVEszRubxIlye3va1y+25Pt6NQ7aQ8AV
 zt7txKZhCrlDBkpCd5tXnm8VMEKO/VlYw9zp52mWjICVuN9gra6hZ/DSXOwDn1X80k
 sgl4i99FPx0vCz54R41wF1AHCCkrNSGz4koPK0SsysLKqrZNmn2URgm7lhrE8HWNnI
 A26asYFH4K2jrHaZwA+vm9jFldF+72wwQNe7TRRsgBodPaEtb4vHCm5NMPI1dRdVMH
 z1n0nWIgWNDM8gJKpinBmGOnbClEkPI5cXljdyIcNGoaSe2//aO+piEK8MH2QHBlFe
 HB/NpegftW/RA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 1e78d7ac;
 Sat, 8 May 2021 00:47:23 +0000 (UTC)
Date: Sat, 8 May 2021 09:47:08 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Luis Henriques <lhenriques@suse.de>
Message-ID: <YJXfjDfw9KM50f4y@codewreck.org>
References: <87czu45gcs.fsf@suse.de> <YJPIyLZ9ofnPy3F6@codewreck.org>
 <87zgx83vj9.fsf@suse.de> <87r1ii4i2a.fsf@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87r1ii4i2a.fsf@suse.de>
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
X-Headers-End: 1lfB84-0006V6-CA
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

Luis Henriques wrote on Fri, May 07, 2021 at 05:36:29PM +0100:
> Ok, I spent some more time on this issue today.  I've hacked a bit of code
> to keep track of new inodes' qids and I'm convinced there are no
> duplicates when this issue happens.

Ok, that's good.
Just to make sure what did you look at aside of the qid to make sure
it's unique? i_ino comes straight from qid->path too so we don't have
any great key available which is why I hadn't suggesting building a
debug table.
(... well, actually that means we'll never try to allocate two inodes
with the same inode number because of how v9fs_qid_iget_dotl() works, so
if there is a collision in qid paths we wouldn't see it through cookies
collision in the first place. I'm not sure that's good? But at least
that clears up that theory, sorry for the bad suggestion)

> OTOH, I've done another quick test: in v9fs_cache_inode_get_cookie(), I do
> an fscache_acquire_cookie() retry when it fails (due to the dup error),
> and this retry *does* succeed.  Which means, I guess, there's a race going
> on.  I didn't managed to look too deep yet, but my current theory is that
> the inode is being evicted while an open is triggered.  A new inode is
> allocated but the old inode fscache cookie hasn't yet been relinquished.
> Does this make any sense?

hm, if the retry goes through I guess that'd make sense; if they both
were used in parallel the second call should fail all the same so that's
definitely a likely explanation.

It wouldn't hurt to check with v9fs_evict_inode if that's correct...
There definitely is a window where inode is no longer findable (thus
leading to allocation of a new one) and the call to the
fscache_relinquish_cookie() at eviction, but looking at e.g. afs they
are doing exactly the same as 9p here (iget5_locked, if that gets a new
inode then call fscache_acquire_cookie // fscache_relinquish_cookie in
evict op) so I'm not sure what we're missing.


David, do you have an idea?

> If this theory is correct, I'm not sure what's the best way to close this
> race because the v9inode->fscache_lock can't really be used.  But I still
> need to proof this is really what's happening.

Yes, I think we're going to need proof before thinking of a solution, I
can't think of anything simple either.


Thanks again for looking into it,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
