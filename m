Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 219944ECF04
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Mar 2022 23:48:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nZgAq-0003uQ-VO; Wed, 30 Mar 2022 21:48:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nZgAo-0003uC-Sc
 for v9fs-developer@lists.sourceforge.net; Wed, 30 Mar 2022 21:48:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JBKLv303K90QCwUMTooNfskYmIZP7k25TQ0ASMcQRSI=; b=I5V0PGpYqVqc3H7G0DoYyN399C
 rAogJXY87y9kUiA7at8uSePR5nd+MEIcX0buWL9UUq7fTJ4xEsUGY7JzbnCIiWhUMW01GRKmijedG
 qVAHjL4iqHuncj1DL3aapK3GnwX3kl8RemGIuZoY9iHIGZQJT5pQVeXGUMhO2wepMrrw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JBKLv303K90QCwUMTooNfskYmIZP7k25TQ0ASMcQRSI=; b=GwTV4V5bfyYLRLwMiRD51PgvoM
 uJd3xgCqj4BAM5QOgoQcWFNaxdgdOtxL9TKCpFtnp5ezvFFIN7p9FcfpOBu9JMwzLBAMCApbYpd8T
 SaHdlvbyu4KSMguhtSnCJWDMkN4H5XrWE+vDOAny2CzZDpmCM9vVSTuyaPQQdDV7QwpA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nZgAl-00Ha1u-L3
 for v9fs-developer@lists.sourceforge.net; Wed, 30 Mar 2022 21:48:13 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id EC6CFC021; Wed, 30 Mar 2022 23:48:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1648676884; bh=JBKLv303K90QCwUMTooNfskYmIZP7k25TQ0ASMcQRSI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZyDuY9EHxC6b3cGDP2eO51iv4iFDbwJIXPW0OiAiHDP3E8AJWLvulUcCrbd2aAagO
 SdxLv88pAZKEi3cNsC09XHBPJguOTD36TRHJHbs6bCQlNmK0pgrREeTIaYWJEYfKon
 n9m1EaODjoXeSmW0IO2yq4rDR4fNHV3RV6KB+ctyNuWroTw/8mdcxvQp6UXvODxLsa
 w7UYDNoipv+bYpb9NMxEX+NNLYLlIwp1OFmF9Mm6bmYwXBbGO6wzKLG0/UMioVpeH9
 sBN42Tq71Lvvca7RPtggzjQBSX3mTXrx3VdlAmWzbvgSImItPQX7bhmz7nDPUpmnIQ
 QPxqovfxMjZzw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 1F6EAC009;
 Wed, 30 Mar 2022 23:47:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1648676883; bh=JBKLv303K90QCwUMTooNfskYmIZP7k25TQ0ASMcQRSI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GIKyUZbIYuq5PoIeC4yUO63eTSwhcmASKxRBPNeHzfpNz5tN1WuQ4e3ooMhrhjpFd
 bc+C1ya1dMT0Wp9gmjKiEsmT8lmem9rYf+hPuuRfq1HmNQ1wW1aVCfrHke2mxHYRn/
 lutBfosOyCD1a++oHT4focbwJpEkMFVnLifT0vJrv8DxN2Tl3RGK4BXU4jXsZp01M7
 noStU+yX+fmrzThCpFFrxLrbFdMZi2yR12iBst8eOVccrFgeweIB0O9G02nPTl2xDk
 F6vKjNyKtX239KbthfMXLpobOTSHEIL6KvAPPN1e2OXxcoc/e9gnHwFY3Dwato5Ae7
 jL1YX4yt5FqGQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id e5f1e8fa;
 Wed, 30 Mar 2022 21:47:56 +0000 (UTC)
Date: Thu, 31 Mar 2022 06:47:41 +0900
From: asmadeus@codewreck.org
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YkTP/Talsy3KQBbf@codewreck.org>
References: <CAAZOf26g-L2nSV-Siw6mwWQv1nv6on8c0fWqB4bKmX73QAFzow@mail.gmail.com>
 <2582025.XdajAv7fHn@silver> <Yj8WkjT+MsdFIfwr@codewreck.org>
 <3791738.ukkqOL8KQD@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3791738.ukkqOL8KQD@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks Christian! Christian Schoenebeck wrote on Wed, Mar
 30, 2022 at 02:21:16PM +0200: > Case Linux kernel version .config msize cache
 duration host cpu errors/warnings > > A) 5.17.0+[2] + msize patches[1] debug
 41861 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nZgAl-00Ha1u-L3
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

Thanks Christian!

Christian Schoenebeck wrote on Wed, Mar 30, 2022 at 02:21:16PM +0200:
> Case  Linux kernel version           .config  msize    cache  duration  host cpu  errors/warnings
> 
> A)    5.17.0+[2] + msize patches[1]  debug    4186112  mmap   20m 40s   ~80%      none
> B)    5.17.0+[2] + msize patches[1]  debug    4186112  loose  31m 28s   ~35%      several errors (compilation completed)
> C)    5.17.0+[2] + msize patches[1]  debug    507904   mmap   20m 25s   ~84%      none
> D)    5.17.0+[2] + msize patches[1]  debug    507904   loose  31m 2s    ~33%      several errors (compilation completed)
> E)    5.17.0+[2]                     debug    512000   mmap   23m 45s   ~75%      none
> F)    5.17.0+[2]                     debug    512000   loose  32m 6s    ~31%      several errors (compilation completed)
> G)    5.17.0+[2]                     release  512000   mmap   23m 18s   ~76%      none
> H)    5.17.0+[2]                     release  512000   loose  32m 33s   ~31%      several errors (compilation completed)
> I)    5.17.0+[2] + msize patches[1]  release  4186112  mmap   20m 30s   ~83%      none
> J)    5.17.0+[2] + msize patches[1]  release  4186112  loose  31m 21s   ~31%      several errors (compilation completed)
> K)    5.10.84                        release  512000   mmap   39m 20s   ~80%      none
> L)    5.10.84                        release  512000   loose  13m 40s   ~55%      none

ow.

> Disclaimer: I have not looked into the fs-cache sources yet, so I am not sure,
> but my first impression is that probably something got broken with recent
> fs-cache changes (see column errors, especially in comparison to case L) which
> did not generate any errors)? And also note the huge build duration 
> differences, especially in comparison to case L), so fs-cache (cache=loose)
> also got significantly slower while cache=mmap OTOH became significantly
> faster?

Yes, that's a big regression; I didn't do any performance benchmark with
the new patches as I didn't think it'd matter but I obviously should
have.

There is one thing I must check: I know new kernels will be writing in
4k chunks and that is going to be very slow until the netfs write
helpers are finished, but I thought the old code did the same.
If the old code had bigger writes that performance will probably come
back.
Otherwise there's some other error like not reusing cached content we
should use.


> About the errors: I actually already see errors with cache=loose and recent
> kernel version just when booting the guest OS. For these tests I chose some
> sources which allowed me to complete the build to capture some benchmark as
> well, I got some "soft" errors with those, but the build completed at least.
> I had other sources OTOH which did not complete though and aborted with
> certain invalid file descriptor errors, which I obviously could not use for
> those benchmarks here.

That's less surprising, the change was really huge. I'm annoyed because
I did test part of a parallel linux kernel compilation with
cache=fscache without noticing a problem :/

I'll try to reproduce this weekend-ish.
> > Christian Schoenebeck wrote on Sat, Mar 26, 2022 at 01:36:31PM +0100:
> > hm, fscache code shouldn't be used for cache=mmap, I'm surprised you can
> > hit this...
> 
> I assume that you mean that 9p driver does not explicitly ask for fs-cache
> being used for mmap. I see that 9p uses the kernel's generalized mmap
> implementation:
> 
> https://github.com/torvalds/linux/blob/d888c83fcec75194a8a48ccd283953bdba7b2550/fs/9p/vfs_file.c#L481
> 
> I haven't dived further into this, but the kernel has to use some kind of
> filesystem cache anyway to provide the mmap functionality, so I guess it makes
> sense that I got those warning messages from the FS-Cache subsystem?

It uses the generic mmap which has vfs caching, but definitely not
fs-cache.
fs-cache adds more hooks for cachefilesd (writing file contents to disk
for bigger cache) and things like that cache=loose/mmap shouldn't be
caring about. cache=loose actually just disables some key parts so I'm
not surprised it shares bugs with the new code, but cache=mmap is really
independant and I need to trace where these come from...

> With QEMU >= 5.2 you should see the following QEMU warning with your reproducer:
> 
> "
> qemu-system-x86_64: warning: 9p: Multiple devices detected in same VirtFS
> export, which might lead to file ID collisions and severe misbehaviours on
> guest! You should either use a separate export for each device shared from
> host or use virtfs option 'multidevs=remap'!
> "

oh, I wasn't aware of the new option. Good job there!

It's the easiest way to reproduce but there are also harder to fix
collisions, file systems only guarantee unicity for (fsid,inode
number,version) which is usually bigger than 128 bits (although version
is often 0), but version isn't exposed to userspace easily...
What we'd want for unicity is handle from e.g. name_to_handle_at but
that'd add overhead, wouldn't fit in qid path and not all fs are capable
of providing one... The 9p protocol just doesn't want bigger handles
than qid path.



And, err, looking at the qemu code

  qidp->version = stbuf->st_mtime ^ (stbuf->st_size << 8);

so the qid is treated as "data version",
but on kernel side we've treated it as inode version (i_version, see
include/linux/iversion.h)

(v9fs_test_inode_dotl checks the version is the same when comparing two
inodes) so it will incorrectly identify two identical inodes as
different.
That will cause problems...
Since you'll be faster than me could you try keeping it at 0 there?

I see fscache also uses the qid version as 'auxilliary data', but I'm
not sure what this is used for -- if it's a data version like thing then
it will also at least invalidate the cache content all the time.


Note there also is a data_version thing in the protocol in the response
to getattr, which the protocol side of 9p in linux digilently fills in
st_data_version, but we never use it that I can see.
This is probably what 9p meant to fill, and fscache should rely on to
detect file changes if that helps.


I'm sorry I didn't see this sooner....

> > If you have some kind of reproducer of invalid filedescriptor or similar
> > errors I'd be happy to dig a bit more, I don't particularly like all
> > aspect of our cache model but it's not good if it corrupts things.
> 
> Maybe you can reproduce this with the root fs setup [4] described above? As I
> said, I immediately get errors when guest OS is booting. So I don't have to
> run something fancy to get errors with cache=loose & recent kernel.

Yes, this is much worse than I had first assumed when you first brought
it up, I'll definitely set some time aside to investigate.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
