Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B0D4EFD03
	for <lists+v9fs-developer@lfdr.de>; Sat,  2 Apr 2022 01:11:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1naQQj-0002Bw-1z; Fri, 01 Apr 2022 23:11:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1naQQh-0002Bq-7t
 for v9fs-developer@lists.sourceforge.net; Fri, 01 Apr 2022 23:11:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SetFAKutclE/yyKTkciHTa9dxUVAQelXK5rEur9ld6Y=; b=D1HAYuGYDwwhGtmTKjqRoSKTv5
 bfKJJjlc6RFHu0yNJB+/hEt8Iq2O5kGGPCuonJ0ugJZ2D2B7UAcgiCX/E5/wn4f8y2dQTl1LyzQmc
 jEKryXM0Vyvb6ukis64Y6DBWEkuo5zip9mWTG5+IFlczx19Fp6bDYXp13zO2uYSPLIz4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SetFAKutclE/yyKTkciHTa9dxUVAQelXK5rEur9ld6Y=; b=l+wdytXEUtcyBuEnWPFzQkwktt
 kovTZIVdsVfkNZ6/xvdr03cqlkpC3ZN1cLeX5hEazgmK+xHvvFpufuF4i0bQyjFHApc1Up1eqv1DS
 ErFp8VS0uKvNQ7b/xpMHMBD4qpcHrEF50XFA2NLjM5g1GoEyKgoXZQd1qNX1h16erDH4=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1naQQc-0001co-Bs
 for v9fs-developer@lists.sourceforge.net; Fri, 01 Apr 2022 23:11:41 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 497DDC020; Sat,  2 Apr 2022 01:11:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1648854688; bh=SetFAKutclE/yyKTkciHTa9dxUVAQelXK5rEur9ld6Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=4LpuhqYg0JYGNwwdEcsJuxwlpKU9TfWtt6EuaItp0DiPKVZpLdyYG36HeVYeMDloj
 oBmuzUQX2VaLiVTfvIwa2tfJqNSwlxchSagqicC+xD9O9MovXh/F5xE1P9/prGYH/U
 /XstkEwVo3tcYdHurSeDePxxienJ4IktVZJG8JRn9V1T0hxWHBBFdELSuj+wQqB8EH
 zwT35Y82CaWe9fSkn27sp4jhs+kZ5uKrdHZUm4JisQh5F6v0Uh9i3+j50djyNE0Swu
 nyFthwX3L4XCUXamyindjatuucN99GMcDSLWVea4UpbAw3bCXyrg0nQZptx+xC5ZB3
 +W+TFuNI/Fmsg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id E5B28C009;
 Sat,  2 Apr 2022 01:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1648854687; bh=SetFAKutclE/yyKTkciHTa9dxUVAQelXK5rEur9ld6Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y7AyGgdzV9RIYAvdo+e71CeyXyd7OjgbOu+6jy5903aPxwQKeWDMwygxuze4Cj0JY
 rLgHWupoCxT2rLOccNXi4WipK9q1vufgQDHoZi307pgRgfiFnwyOdqMhdB0xoOyp8M
 ueZo/74TsW7C4T8WxuSoU1JOqVi9sOVf4htDVSoIMHRiyXjkpY5pauKCrgdC+pUV2i
 KBtGZhbhG/GOdyI0OIfTQx7NCZCMoLE0HWQWa/aVDSSr9OAgmIQ99D6zL+5qJ5VMsp
 ZVpqvC777v6leVvOz8bYs/5t2Jo9G00MpfMFstxfuRMSd5tW7wjuyvl+yAAm/JP6tt
 StnW9X+XJLe9A==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id ad70e3e6;
 Fri, 1 Apr 2022 23:11:19 +0000 (UTC)
Date: Sat, 2 Apr 2022 08:11:04 +0900
From: asmadeus@codewreck.org
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YkeGiLyO52etYhgb@codewreck.org>
References: <CAAZOf26g-L2nSV-Siw6mwWQv1nv6on8c0fWqB4bKmX73QAFzow@mail.gmail.com>
 <3791738.ukkqOL8KQD@silver> <YkTP/Talsy3KQBbf@codewreck.org>
 <1866935.Y7JIjT2MHT@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1866935.Y7JIjT2MHT@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Fri, Apr 01,
 2022 at 04:19:20PM
 +0200: > 4. v9fs_qid_iget_dotl [fs/9p/vfs_inode_dotl.c, 133]: > >
 v9fs_cache_inode_get_cookie(inode); 
 > ^--- Called independent of functi [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1naQQc-0001co-Bs
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

Christian Schoenebeck wrote on Fri, Apr 01, 2022 at 04:19:20PM +0200:
> 4. v9fs_qid_iget_dotl [fs/9p/vfs_inode_dotl.c, 133]:
> 
> 	v9fs_cache_inode_get_cookie(inode);
> 	^--- Called independent of function argument "new"'s value here
>    https://github.com/torvalds/linux/blob/e8b767f5e04097aaedcd6e06e2270f9fe5282696/fs/9p/vfs_inode_dotl.c#L133


uh, I'd have assumed either this call or the function to check
v9ses->cache, but it doesn't look like either do...
There's a nice compile-time static inline empty definition if FSCACHE is
not compiled in, but that should -also- be a check at runtime based on
the session struct.

For your remark vs. the 'new' argument, it does depend on it:
 - new determines which check is used for iget5_locked.
In the 'new' case, v9fs_test_new_inode_dotl always returns 0 so we
always get a new inode.
 - if iget5_locked found an existing inode (i_state & I_NEW false) we
return it.
 - at this point we're allocating a new inode, so we should initialize
its cookie if it's on a fscache-enabled mount

So that part looks OK to me.

What isn't correct with qemu setting qid version is the non-new case's
v9fs_test_inode_dotl, it'll consider the inode to be new if version
changed so it would recreate new, different inodes with same inode
number/cookie and I was sure that was the problem, but it looks like
there's more to it from your reply below :(


>> Well, at least that one is an easy fix: we just don't need this.
>> It's the easiest way to reproduce but there are also harder to fix
>> collisions, file systems only guarantee unicity for (fsid,inode
>> number,version) which is usually bigger than 128 bits (although version
>> is often 0), but version isn't exposed to userspace easily...
>> What we'd want for unicity is handle from e.g. name_to_handle_at but
>> that'd add overhead, wouldn't fit in qid path and not all fs are capable
>> of providing one... The 9p protocol just doesn't want bigger handles
>> than qid path.
> 
> No bigger qid.path on 9p protocol level in future? Why?

I have no idea about the "9p protocol" as a standard, nor who decides
how that evolves -- I guess if we wanted to we could probably make a
9p2022.L without concerting much around, but I have no plan to do
that... But if we do, I can probably add quite a few things to the
list of things that might need to change :)


That being said, this particular change of qid format is rather
annoying. 9p2000.L basically just added new message types, so dissectors
such as wireshark could barge in the middle of the tcp flow and more or
less understand; modifying a basic type like this would require to
either catch the TVERSION message or make new message types for
everything that deals wth qids (auth/attach, walk, lopen, lcreate,
mknod, getattr, readdir, mkdir... that's quite a few)

So I think we're better off with the status quo here.

>> And, err, looking at the qemu code
>> 
>>   qidp->version = stbuf->st_mtime ^ (stbuf->st_size << 8);
>> 
>> so the qid is treated as "data version",
>> but on kernel side we've treated it as inode version (i_version, see
>> include/linux/iversion.h)
>> 
>> (v9fs_test_inode_dotl checks the version is the same when comparing two
>> inodes) so it will incorrectly identify two identical inodes as
>> different.
>> That will cause problems...
>> Since you'll be faster than me could you try keeping it at 0 there?
> 
> I tried with your suggested change on QEMU side:
> 
> diff --git a/hw/9pfs/9p.c b/hw/9pfs/9p.c
> index a6d6b3f835..5d9be87758 100644
> --- a/hw/9pfs/9p.c
> +++ b/hw/9pfs/9p.c
> @@ -981,7 +981,7 @@ static int stat_to_qid(V9fsPDU *pdu, const struct stat *stbuf, V9fsQID *qidp)
>          memcpy(&qidp->path, &stbuf->st_ino, size);
>      }
>  
> -    qidp->version = stbuf->st_mtime ^ (stbuf->st_size << 8);
> +    qidp->version = 0;
>      qidp->type = 0;
>      if (S_ISDIR(stbuf->st_mode)) {
>          qidp->type |= P9_QID_TYPE_DIR;
> 
> Unfortunately it did not make any difference for these 2 Linux kernel fs-cache
> issues at least; still same errors, and same suboptimal performance.

Thanks, I'll give it a try today or tomorrow, adding some trace when we
create inodes might give a clue...

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
