Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 367DC6CF2F
	for <lists+v9fs-developer@lfdr.de>; Thu, 18 Jul 2019 15:53:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ho6qY-00074c-Ou; Thu, 18 Jul 2019 13:53:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1ho6qX-00074V-Lc
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jul 2019 13:53:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L51hL1rN5Blif0ckn1z7Oqtq3YTwnXltmFJTWgkSd/s=; b=cNZIXKd/xJf0lF6a7jzPKQxUkA
 tlFEKxIXECFDSXGwkw7nMZunw9HQWVR44GKa4yFT+uXRhezzt38He/890EN+u+p/UUZ4e1vTaDtlO
 xbKUTFKOAcSgSPVaHe1luF4hwXAHXs/pYaXinIO2g+kjBXOr32cFVdpW6iCY+eMtqd7s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=L51hL1rN5Blif0ckn1z7Oqtq3YTwnXltmFJTWgkSd/s=; b=k
 +J0B4LriPD1TjpW5sDyqFmz/XvdoDsOcjFu4/Wyv7aGYRQsbS05B/SV5lWQHnzrx38Z8R8dV6DH66
 V9gXPo72NRxa8Q05YV49Zla4/z2HdYqjE5eVcDy/yCGIDardZffEppVmHOAfNoHY+MIUhrg8EmzK9
 Z+RRfyOzBM1Iv5BQ=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1ho6qT-005xvF-I8
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jul 2019 13:53:21 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id DA161C01B; Thu, 18 Jul 2019 15:53:10 +0200 (CEST)
Date: Thu, 18 Jul 2019 15:52:55 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Matthieu Baerts <matthieu.baerts@tessares.net>
Message-ID: <20190718135255.GA21431@nautica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <988f6ad4-3ae9-d47e-706a-e784a80d6e8b@tessares.net>
 <294f9793-94f9-a3ec-97ab-a691d27736c3@tessares.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FAKE_REPLY_C           No description available.
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ho6qT-005xvF-I8
Subject: Re: [V9fs-developer] New KASAN warnings with kernel v4.14.133
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
Cc: Sasha Levin <sashal@kernel.org>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthieu Baerts wrote on Thu, Jul 18, 2019:
> I can sure do that but before, when you say:
> 
> > the pr_debug messages will go to dmesg.
> 
> Are they really "pr_debug" message? Just to know if I need to do
> something special at the compilation time.

I meant p9_debug(), but it should all be the same and lead to printk()s
if the flag is enabled.

Matthieu Baerts wrote on Thu, Jul 18, 2019:
> > I might have done something wrong because I don't see any debug
> > information printed in dmesg, at least not more than before:
> 
> I just looked at the code and it seems debug=1 means I will only get the
> messages related to the errors (P9_DEBUG_ERROR).
> 
> With debug=7, I have many more messages, too many for my VMs in fact :)

As you found out, debug is a mask yes - with the trivial patch I inlined
both error paths out of p9dirent_read should print something with
debug=1 (P9_DEBUG_ERROR), so given removing the patch makes the issue
not happen anymore I was expecting at least some error to happen
there...

> I did the modification you proposed in protocol.c and this
> "p9dirent_read failed" message is not printed.
> 
> I also tried to use "debug=3" but I don't have any other messages that
> are printed in dmesg.
> 
> If you have any other ideas, do not hesitate to share, I now have one
> setup ready to test that.

hmm, so since debug=3 works the setup is fine, just for some reason
neither of the errors added in 84693d06096 ("9p: p9dirent_read: check
network-provided name length") are hit.. I'll have to admit I don't
follow, but then again I didn't think the patch could cause the kasan
warning we see so something else must be wrong somewhere.

I'd like to look into why we see mixed dotl and non-dotl function calls
in the trace (what I was saying about ovl using v9fs_vfs_get_link
instead of v9fs_vfs_get_link_dotl in my first message) if possible.

When I tried reproducing in my VM, I can confirm it only uses
v9fs_vfs_get_link_dotl for me, but I'm not using statx so it's not the
exact same traces.
I did the following:

(setup)
# mkdir -p /mnt/9p /mnt/overlay /tmp/overlay/upper /tmp/overlay/work
# mount -t 9p -o trans=virtio,debug=1 share /mnt/9p
# mount -t overlay overlay -o lower=/mnt/9p,upper=/tmp/overlay/upper,workdir=/tmp/overlay/work /mnt/overlay

(actual action)
# perf probe -m 9p v9fs_vfs_get_link_dotl
# perf probe -m 9p v9fs_vfs_get_link
# perf record -g -e probe:* -aR sleep 10 &
# ls -l /mnt/overlay/dir_with_links_on_the_9p_fs
# wait
# perf script
...
ls 19559 [024]  4276.755045: probe:v9fs_vfs_get_link_dotl:
# (ffffffffc0f06930)
        ffffffffc0f06931 v9fs_vfs_get_link_dotl+0x1
		(/lib/modules/4.14.133/kernel/fs/9p/9p.ko)
        ffffffffc0f43888 ovl_get_link+0x58 ([overlay])
        ffffffffab6f2ab6 vfs_readlink+0x186 ([kernel.kallsyms])
        ffffffffab6caca8 sys_readlink+0x1c8 ([kernel.kallsyms])
        ffffffffab0067a4 do_syscall_64+0x194 ([kernel.kallsyms])
            7f9b99db5c0b __GI___readlink+0xb (/usr/lib64/libc-2.29.so)
                       0 [unknown] ([unknown])
...


If you have interactive access to the vm, could you try something
similar to see if v9fs_vfs_get_link also gets hit for you?


-- 
Dominique




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
