Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 69794375297
	for <lists+v9fs-developer@lfdr.de>; Thu,  6 May 2021 12:46:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lebW8-0006ct-09; Thu, 06 May 2021 10:46:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1lebW4-0006cY-Jh
 for v9fs-developer@lists.sourceforge.net; Thu, 06 May 2021 10:46:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Eltaj5kPUBECH6pcqch9h0zKaBV/rygrZqCSkbQ3rss=; b=SCMApovNJa7NQaKliigHYTExOn
 i3UzYqX+Efo28Vi8/DAoy1u30f91ryfqGgDGMIWKOjq+sr3kHgbjH7qzfav0IscGBrFWCWxVampEB
 dgjd5hwJTWKqF5iUxfg6eyOjpXdP4zx9bjSESpiUMDiVF/JM00iz9Y5Paoj5ip7sb/PI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Eltaj5kPUBECH6pcqch9h0zKaBV/rygrZqCSkbQ3rss=; b=NPCv+2bSgpLuHktoPlR7Og7GRk
 JaogbXdBs38tiYcmrlmHfgPpEJ+29wzibLXhxcQ9BoJqSTkkuEJ8kcE1s3wUJXHQNYVgd0OMUdFsc
 iWnDeX4MM43Zw7AqhAir4d07WRRoFyaOv21ooUlcE9rlpossPmzLNktTvqMSv2xOLMr0=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lebVz-0002Kb-Kd
 for v9fs-developer@lists.sourceforge.net; Thu, 06 May 2021 10:46:00 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 7EF87C01A; Thu,  6 May 2021 12:45:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1620297949; bh=Eltaj5kPUBECH6pcqch9h0zKaBV/rygrZqCSkbQ3rss=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GJevDN92IQquziUxoSTJFLVXkY7jMwonWwB50L/65vlY4p3Onut63bA6UrRWzPUoV
 Q8tEM29ABRCZb0Qjk8+0MLeIc2WQkN9gibCE4J+n4ZuIJaYvLfvoBvbdqAEVoH7KPc
 d30DPERtKbgjx6IZeJZm7ix/rmeazh/v6dBAMwahYqqDSXq/X/o8A15pKYy2Lxi2LG
 YuPlZoeNRgCLEJ8Rb3WkhVtQ9lknjJ+GhP4DUsK1UZV4sUHVLYGiodzoNmgroaUgF8
 FeNJo5I2INyPzohhTeEl4yuU2AxlnIXUqp5zhW+0qS4owNNAFT+2n1Zpc/FhzAMoY6
 v0wbNVdp//t9Q==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 65A06C009;
 Thu,  6 May 2021 12:45:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1620297949; bh=Eltaj5kPUBECH6pcqch9h0zKaBV/rygrZqCSkbQ3rss=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GJevDN92IQquziUxoSTJFLVXkY7jMwonWwB50L/65vlY4p3Onut63bA6UrRWzPUoV
 Q8tEM29ABRCZb0Qjk8+0MLeIc2WQkN9gibCE4J+n4ZuIJaYvLfvoBvbdqAEVoH7KPc
 d30DPERtKbgjx6IZeJZm7ix/rmeazh/v6dBAMwahYqqDSXq/X/o8A15pKYy2Lxi2LG
 YuPlZoeNRgCLEJ8Rb3WkhVtQ9lknjJ+GhP4DUsK1UZV4sUHVLYGiodzoNmgroaUgF8
 FeNJo5I2INyPzohhTeEl4yuU2AxlnIXUqp5zhW+0qS4owNNAFT+2n1Zpc/FhzAMoY6
 v0wbNVdp//t9Q==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id b339a217;
 Thu, 6 May 2021 10:45:43 +0000 (UTC)
Date: Thu, 6 May 2021 19:45:28 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Luis Henriques <lhenriques@suse.de>
Message-ID: <YJPIyLZ9ofnPy3F6@codewreck.org>
References: <87czu45gcs.fsf@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87czu45gcs.fsf@suse.de>
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
X-Headers-End: 1lebVz-0002Kb-Kd
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

Hi,

Luis Henriques wrote on Thu, May 06, 2021 at 11:03:31AM +0100:
> I've been seeing fscache complaining about duplicate cookies in 9p:
> 
>  FS-Cache: Duplicate cookie detected
>  FS-Cache: O-cookie c=00000000ba929e80 [p=000000002e706df1 fl=226 nc=0 na=1]
>  FS-Cache: O-cookie d=0000000000000000 n=0000000000000000
>  FS-Cache: O-key=[8] '0312710100000000'
>  FS-Cache: N-cookie c=00000000274050fe [p=000000002e706df1 fl=2 nc=0 na=1]
>  FS-Cache: N-cookie d=0000000037368b65 n=000000004047ed1f
>  FS-Cache: N-key=[8] '0312710100000000'

> It's quite easy to reproduce in my environment by running xfstests using
> the virtme scripts to boot a test kernel.  A quick look seems to indicate
> the warning comes from the v9fs_vfs_atomic_open_dotl() path:
> 
> [...]
> 
> Is this a know issue?

I normally don't use fscache so never really looked into it, I saw it
again recently when looking at David's fscache/netfs work and it didn't
seem to cause real trouble without a server but I bet it would if there
were to be one, I just never had the time to look further.

From a quick look v9fs uses the 'qid path' of the inode that is
supposed to be a unique identifier; in practice there are various
heuristics to it depending on the server but qemu takes the st_dev of
the underlying filesystem and chops the higher bits of the inode number
to make it up -- see qid_path_suffixmap() in hw/9pfs/9p.c in qemu
sources.

(protocol description can be found here:
https://github.com/chaos/diod/blob/master/protocol.md
)


In this case if there is a cookie collision there are two possibilities
I can see: either a previously hashed inode somehow got cleaned up
without the associated fscache cleanup or qemu dished out the same qid
path for two different files -- old filesystems used to have predictable
inode numbers but that is far from true anymore so it's quite possible
some files would have the same lower bits for their inode number on the
host...
If you have the time to investigate further that would be appreciated, I
have confirmed the fscache rework David suggested did not fix it so the
work will not be lost.


That's going to be very verbose but if you're not scared of digging at
logs a possible way to confirm qid identity would be to mount with -o
debug=5 (P9_DEBUG_9P + ERROR), all qid paths are logged to dmesg, but
that might not be viable if there is a real lot -- it depends on how
fast and reliable your quite easy to reproduce is...


Thanks,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
