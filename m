Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C60AF4F0191
	for <lists+v9fs-developer@lfdr.de>; Sat,  2 Apr 2022 14:43:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nad6d-0005xO-JY; Sat, 02 Apr 2022 12:43:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1nad6c-0005xH-CZ
 for v9fs-developer@lists.sourceforge.net; Sat, 02 Apr 2022 12:43:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TPbMn89W95XekkaeUK/Ktas9k26DVDMW/Vk7Hpxzhag=; b=aXmHqe8rBbdv+O686AMTPmFGnq
 6ALi4mOKet7ALbmzhbGkqty3L7pt7fB1qJmT8DGEaNzF4SgooeMHdJRCBP7tJaem560KP10gH/J/u
 2h3M12WpDjVaVKB5nHydCygbyExeHLKqhJgyvst2fPNt8Yk6SYl5q2Tib4A8a9hU7y74=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TPbMn89W95XekkaeUK/Ktas9k26DVDMW/Vk7Hpxzhag=; b=j56BYgOUGOibiFhUtfgemy73Bi
 E3qRfVFG1PlYxYhjVuESqbp4Dg15EPqGem8oL39kcz5tw3u4upKdKidEfqK2m+dzt5fGgdGYPcPAl
 +41Cr/aya3RYgwaHPZ7jbEjxr8gyN+FYSHTgUjdazLz3ncKsgZiaqNXbfe5WNtgAPK44=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nad6X-0004Pi-Ri
 for v9fs-developer@lists.sourceforge.net; Sat, 02 Apr 2022 12:43:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=TPbMn89W95XekkaeUK/Ktas9k26DVDMW/Vk7Hpxzhag=; b=pXWOGxcLBamEzUQP+Um1BO2qwi
 MnxRdVIkPZGS3nOUBSWRV0PHmItx5sS/Bpp4Omb/PH0X74/OvM8mJ6IlJwyLPoUeljeWbyXa2L3Mt
 gNjJYJc0aQHy4Q3/bq/9h4TPA03tmsqXtxAy9dyeCLdN0zsyZlnckZK60OjtFX4dWqGaNyepOJrOt
 YHRsdmcPl6DN8IB2tnH7hCeCB7ct+fY4T7kziIOA4y9/EkunxJW833Q/WfRruLFR6ZAWEzFXzwxeb
 N5Cj9/HQf86xUjTC+sPdT/E2sinV9oqra2plr5R/Yzy6nS+WppgaPOvqvtyujxv1GvhQfJ7Ysjs0a
 5h/zM6clESJ6El37ClGg0R/w1AOjg50B4ZpQRDr52p1Y4qb9jc7lIqLiD2hk998T2r6D9lsaEoSx1
 xoZKPaPBA2moFTCg5JdI2Ry+rdVWS0oj6JyqfYV9aF2PhYnZDLYLS+CecGAWR+dOnIn9fPRglDmgr
 xRA2Sj+JRyhMLsnSyPxPiHu07IGFVn4OnMh4gP2mQSMmP4V0XIK55G/K+DTmF+XJSLDWeopbCfmLT
 ce/2wZhczqKTliH2Ks5C0LBTYna3ouBFStSPiq6nw4KVT+sk7KotWBs8bkUiLYZaniwu/VZkSC9uj
 JjPjCuQEZlhGfFQDV1yQD2QipiFpvZClTklDOweuw=;
To: asmadeus@codewreck.org
Date: Sat, 02 Apr 2022 14:43:27 +0200
Message-ID: <2217691.DX9Dedu4HX@silver>
In-Reply-To: <YkeGiLyO52etYhgb@codewreck.org>
References: <CAAZOf26g-L2nSV-Siw6mwWQv1nv6on8c0fWqB4bKmX73QAFzow@mail.gmail.com>
 <1866935.Y7JIjT2MHT@silver> <YkeGiLyO52etYhgb@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Samstag,
 2. April 2022 01:11:04 CEST asmadeus@codewreck.org
 wrote: > Christian Schoenebeck wrote on Fri, Apr 01, 2022 at 04:19:20PM +0200:
 > > 4. v9fs_qid_iget_dotl [fs/9p/vfs_inode_dotl.c, 133]: > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
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
X-Headers-End: 1nad6X-0004Pi-Ri
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: lucho@ionkov.net, David Kahurani <k.kahurani@gmail.com>, ericvh@gmail.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, David Howells <dhowells@redhat.com>,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Samstag, 2. April 2022 01:11:04 CEST asmadeus@codewreck.org wrote:
> Christian Schoenebeck wrote on Fri, Apr 01, 2022 at 04:19:20PM +0200:
> > 4. v9fs_qid_iget_dotl [fs/9p/vfs_inode_dotl.c, 133]:
> > 	v9fs_cache_inode_get_cookie(inode);
> > 	^--- Called independent of function argument "new"'s value here
> > 	
> >    https://github.com/torvalds/linux/blob/e8b767f5e04097aaedcd6e06e2270f9f
> >    e5282696/fs/9p/vfs_inode_dotl.c#L133
> uh, I'd have assumed either this call or the function to check
> v9ses->cache, but it doesn't look like either do...
> There's a nice compile-time static inline empty definition if FSCACHE is
> not compiled in, but that should -also- be a check at runtime based on
> the session struct.
> 
> For your remark vs. the 'new' argument, it does depend on it:
>  - new determines which check is used for iget5_locked.
> In the 'new' case, v9fs_test_new_inode_dotl always returns 0 so we
> always get a new inode.
>  - if iget5_locked found an existing inode (i_state & I_NEW false) we
> return it.

Yes, I saw that. This part so far is correct.

The only minor issue I see here from performance PoV: the test function passed
(always returning zero) unnecessarily causes find_inode() to iterate over all
inodes of the associated hash bucket:

https://github.com/torvalds/linux/blob/88e6c0207623874922712e162e25d9dafd39661e/fs/inode.c#L912

IMO it would make sense introducing an official of what's called "identically
zero function" in shared code space and let 9p use that official function
instead. Then inode.c could simply compare the test function pointer and not
bother to iterate over the entire list in such a case.

>  - at this point we're allocating a new inode, so we should initialize
> its cookie if it's on a fscache-enabled mount
> 
> So that part looks OK to me.

Mmm, but you agree that it also does that for cache=mmap right now, right?

> What isn't correct with qemu setting qid version is the non-new case's
> v9fs_test_inode_dotl, it'll consider the inode to be new if version
> changed so it would recreate new, different inodes with same inode
> number/cookie and I was sure that was the problem, but it looks like
> there's more to it from your reply below :(

Yes, it does not seem to be related, and I mean this part of the code has not
changed for 11 years. So if that was the cause, then old kernels would suffer
from the same issues, which does not seem to be the case.

I would not say though that QEMU is necessarily wrong in filling in mtime for
qid.version. The 9p spec just says:

"The version is a version number for a file; typically, it is incremented
every time the file is modified."

So yes, it does recommend sequential numbering, but OTOH does not require it.
And implementing that would be expensive, because 9p server would need to
maintain its own version for every single file. whereas using host
filesystem's mtime is cheap.

> >> Well, at least that one is an easy fix: we just don't need this.
> >> It's the easiest way to reproduce but there are also harder to fix
> >> collisions, file systems only guarantee unicity for (fsid,inode
> >> number,version) which is usually bigger than 128 bits (although version
> >> is often 0), but version isn't exposed to userspace easily...
> >> What we'd want for unicity is handle from e.g. name_to_handle_at but
> >> that'd add overhead, wouldn't fit in qid path and not all fs are capable
> >> of providing one... The 9p protocol just doesn't want bigger handles
> >> than qid path.
> > 
> > No bigger qid.path on 9p protocol level in future? Why?
> 
> I have no idea about the "9p protocol" as a standard, nor who decides
> how that evolves -- I guess if we wanted to we could probably make a
> 9p2022.L without concerting much around, but I have no plan to do
> that... But if we do, I can probably add quite a few things to the
> list of things that might need to change :)

Yes, I agree, 9p protocol changes are a long-term thing which I don't want to
hurry either. But I do think it makes sense to at least collect an informal
list of ideas/features/issues that should be addressed in future, e.g. a wiki
page. For now I am using the QEMU wiki for this:

https://wiki.qemu.org/Documentation/9p#Protocol_Plans

You can use that wiki page as well of course, or if somebody thinks there
would be a better place, no problem for me either.

> That being said, this particular change of qid format is rather
> annoying. 9p2000.L basically just added new message types, so dissectors
> such as wireshark could barge in the middle of the tcp flow and more or
> less understand; modifying a basic type like this would require to
> either catch the TVERSION message or make new message types for
> everything that deals wth qids (auth/attach, walk, lopen, lcreate,
> mknod, getattr, readdir, mkdir... that's quite a few)
> 
> So I think we're better off with the status quo here.

Well, in a future protocol revision I would try to merge the individual 9p
dialects as much as possible anyway and I would also release one document that
covers all supported messages instead of requiring people to read 4+
individual specs, which I don't find helpful. Most changes were just about
data types, which could also be covered in a spec by just naming a message
once, and listing the difference for individual 9p versions for that
particular message.

But again: no priority for me either ATM. There is still enough to do for
fixing the implementations on server and client side for current 9p protocol
versions.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
