Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE5548A311
	for <lists+v9fs-developer@lfdr.de>; Mon, 10 Jan 2022 23:40:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n73Kl-0005kU-Qm; Mon, 10 Jan 2022 22:40:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1n73Kk-0005kN-0V
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Jan 2022 22:40:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Te8BExk77WW5hLzCUWrnqiYhug4td6RvDlWybSPjcLI=; b=d2pQYpluweoy0L0aMfNt8TTAlP
 Za3aG0Eq9NBMf4KGDm8LE0NhzbNKcPkVjkJr3+SRzoeyNvHRgwVgnodVYZpg5ZcSoZxe4BoUWI4ey
 W3tNoCzDBZQz5LAxYOYH9mHxI3htAqxlpD5AI5Ho1Fw50N+HUsXiQN3wLeymmA9kLnKg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Te8BExk77WW5hLzCUWrnqiYhug4td6RvDlWybSPjcLI=; b=BOtNK9eMI5lGhMO6wRqiDYgeht
 VUQv6J0PDCs3nmqrzI9JpJA4JbVe0h6/qS1cusQrqeaSnBm9xG9agS+8Z5Azi3tFJwCC2/bjz/bwQ
 8mfCxajbl012vr1yP+536eTWRv/2airdvgNiiiZMRMgKmUnGC1CawxBW6ZcT3pvLEbZg=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n73Kf-00B14C-Ex
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Jan 2022 22:40:09 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 09E85C009; Mon, 10 Jan 2022 23:39:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1641854399; bh=Te8BExk77WW5hLzCUWrnqiYhug4td6RvDlWybSPjcLI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uDfT7p3qj18y15Dsh1yAMH3lVatMUMGOC5KLcMYryJWtu4z1B/Yt+xsiAEuZ8X8B/
 HlLJcq5LVmWBd9U7LA3IvKUZzP1QW1vbgI2zikLsSgCcZjGsuwoEC1+bCfTuGuHqJk
 nmF1rd7oxFw6bJ6rOMyd7ldMxIJao1ixaM31a2TtUB1tgByl8Bv3tXWuNKfcU3VvDW
 IlNG2B+woQth6lXf0rt5fiOkyWmk4dgBtZ/tEeirco12zvCswaX1ryQCxCj9rTwIRd
 rIGyLn9XTOXZrnDzXE5iPhqMpNLPH+DjadVYa/xGl+EtgpBx8wi/6H2/YtQ9cnZE7V
 QXOorbcBYSx+A==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id A4080C009;
 Mon, 10 Jan 2022 23:39:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1641854398; bh=Te8BExk77WW5hLzCUWrnqiYhug4td6RvDlWybSPjcLI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AboiYb6tGL6JqbFicPzk4+NkdsBIgD3S3Zzw+iPehOl7tU/OtU77baMPV2zWISvcl
 2DM6da7mm8mniRGlO3UwGt52C70JP5ILaj7ePBG8kXWGrqDyVEphjFt/pkZrh/M8bK
 tMzR6L1UYrGHrFn++50sde8usjnaCeC1KK9nKQFttkIN6HVbqCF3ZaclGJQAiNTIo5
 AzCLNhbuj7ZyrFZM/M/w+2VvY0c2pOxvVBypdMBT6+E3Zn2u2cjOVXgqFMZ2rHZJRW
 TxoBffka2NTA4eYkZ7i5Eo0goV41ILwiMnoylMk66PL1gZvkak/1e7rQcglkGBsgPA
 CXX4KNex/AfJg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 4585e451;
 Mon, 10 Jan 2022 22:39:53 +0000 (UTC)
Date: Tue, 11 Jan 2022 07:39:38 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: ng@0x80.stream
Message-ID: <Ydy1qtV68fO69baZ@codewreck.org>
References: <c4815842e8eedab0325fc62ae9e58fde@0x80.stream>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c4815842e8eedab0325fc62ae9e58fde@0x80.stream>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, thanks for the report! ng@0x80.stream wrote on Mon, Jan
 10, 2022 at 02:41:18PM +0000: > Hi, this is a bug report; on Linux 5.12 and
 5.14 it seems v9fs uses a fid > that's been used for I/O to walk someplace
 else, which is n [...] 
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
X-Headers-End: 1n73Kf-00B14C-Ex
Subject: Re: [V9fs-developer] bad use of fid
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
Cc: v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi,

thanks for the report!

ng@0x80.stream wrote on Mon, Jan 10, 2022 at 02:41:18PM +0000:
> Hi, this is a bug report; on Linux 5.12 and 5.14 it seems v9fs uses a fid
> that's been used for I/O to walk someplace else, which is not allowed
> according to the manual.

There have been a few patches for 5.11 in order to fix the
"open-and-unlink" access pattern, linux would previously try to walk by
path again when the path no longer existed..

Probably around one of these patches:
478ba09edc1f ("fs/9p: search open fids first")
987a64850996 ("fs/9p: track open fids")
154372e67d40 ("fs/9p: fix create-unlink-getattr idiom")


> From the walk(9p) man page:
> 
>           The fid must be valid in the current session and must not
>           have been opened for I/O by an open or create message.  If

and unfortunately none of us were aware of this rule :(

> From the 9P dialog in a fs of mine:
> 
> 2022/01/10 14:24:53 >>> @ Topen tag 0 fid 2 mode 0
> 2022/01/10 14:24:53 <<< @ Ropen tag 0 qid (16c8eed61aaf0d36 0 'd') iounit 0
> 2022/01/10 14:24:53 >>> @ Tstat tag 0 fid 2
> 2022/01/10 14:24:53 <<< @ Rstat tag 0 st ('root' 'user' 'user' '' q
> (16c8eed61aaf0d36 0 'd') m d555 at 1641824667 mt 1641824667 l 0 t 0 d 0 ext
> )
> 2022/01/10 14:24:53 >>> @ Tread tag 0 fid 2 offset 0 count 65512
> 2022/01/10 14:24:53 <<< @ Rread tag 0 count 113
> 2022/01/10 14:24:53 >>> @ Tread tag 0 fid 2 offset 113 count 65399
> 2022/01/10 14:24:53 <<< @ Rread tag 0 count 0
> 2022/01/10 14:24:53 >>> @ Tread tag 0 fid 2 offset 113 count 65512
> 2022/01/10 14:24:53 <<< @ Rread tag 0 count 0
> 2022/01/10 14:24:53 >>> @ Twalk tag 0 fid 2 newfid 3 0:'ctl'
> 2022/01/10 14:24:53 <<< @ Rerror tag 0 ename 'bad use of fid' ecode 0
> 
> Here fid 2 is used for I/O and then for Twalk.
> 
> I run on 5.10.y on most of my machines but I have to run 5.12 or 5.14 on
> some new hardware, so I noticed the problem.
> The snippets above are for 5.14, I've to confirm if 5.12 has the same
> problem, but higher level error is the same,

Thanks for the associated traces, it's very likely the same.

So basically we need to not add to the list files that were obtained from
open and create...
That means we'll need to explicitely walk by path again on unlink if the
file still is open somewhere when we unlink it, or just double all
create/open by a second walk by path which can also fail, I don't want
to think about that....

This is bending the rules somewhat, but does your server only have this
restriction for non-clone walks?
e.g. if we make it so directories always preserve the rule, but regular
files cheat as they currently do, would it work for you?
That'd solve the trace you provided with ls at least but the server
might fail later if something tries to clone the fid e.g. I think open
straight from /proc/x/fd/ of a regular file might do that.


I've tried a dirty fix just now but that doesn't work because the
current code assumes the inode list is always initialized, and but ^
should be fairly easily reachable.

A better, complete solution that does the same for regular files and
handles unlink somehow will definitely need time to implement, I'd
rather not break open-and-unlink behaviour if we can...

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
