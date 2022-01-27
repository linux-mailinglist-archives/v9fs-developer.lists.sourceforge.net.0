Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8D949EDED
	for <lists+v9fs-developer@lfdr.de>; Thu, 27 Jan 2022 23:06:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nDCuj-0002n5-4x; Thu, 27 Jan 2022 22:06:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nDCui-0002lM-6W
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 22:06:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I2DOrGSkd+bynEddelNZUkNfgcBulHdrwvU6mXk4Fj8=; b=iwGXrZqDQQritI02vr4SzLPBHP
 n7AuMVXC2ue/prPr3a50vejbtK1/aXayztPMDCOcKkgjt8L47JShzNDCWvn+4jG/NGdpUj8ZTS1JY
 PYpIvLna2CoE0Jzdb3Ie98PZSBZ09NVn7maKkeoiAq7cD8iItSmqIdmeDm8UA3KXqmjU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I2DOrGSkd+bynEddelNZUkNfgcBulHdrwvU6mXk4Fj8=; b=F4pd/+DvIdQjNoUYBMeelNHqJj
 0yvhshc/z3zqK+PZiy14R168Te+zemJpxrJdgg/MdKBkBCshzIRHGZcL2dfZvl57QzQKjO14wloGt
 s4E039spuFwS+EsU4KwpfEPrGzeT4ozPHPP4q3N7kCYsNsTPy3Jm4EX2LsCinzr3EoBk=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nDCud-00HABf-OD
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 22:06:42 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 2BC21C01E; Thu, 27 Jan 2022 23:06:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1643321193; bh=I2DOrGSkd+bynEddelNZUkNfgcBulHdrwvU6mXk4Fj8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E6vd16wTqHoUxM4LUm7d7BRwI6VDy0gewNHK3+5ixjocBY/uo463o/SC2IVEnmOOf
 m7TOKwoGEu8ZBJeq7rQm24d/d0pHhpkQ4TpQG6x2l4P1x1TWks/hmDkTEiCIxhgf40
 qeP9KdvPOZe9SNy4gLrLsjCWndtVvgwuv2W+uURL/m0Gm+3ICo9tNF+i8Mf6IojU75
 xaIc03Me2QC9HlkIhSE25wTgDuWCkllIe+PZKVgYfcsqA792CFMk8iOMkxm5i+7mDI
 FsWatik97zJzGRrdSsmt+hs8e9AQTQClzgnwIMjRtqca0S3Y12ryEeFgbAD8p9bvSS
 cv4kdTQAL6MXw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 6B082C01B;
 Thu, 27 Jan 2022 23:06:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1643321192; bh=I2DOrGSkd+bynEddelNZUkNfgcBulHdrwvU6mXk4Fj8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lllhRzAny91eByFVoA26/bFXs/P+XBP3srWXuO3A1OPsXzwUQGsF4hCEVgtRiYivT
 mX/yT7+rGY1wGKm8MKR2644FlW+EgvrOZtfhbi97LmLBr2HQwzMr9QoTqgpZA5mKvT
 aJMAsPU5NBri2m8Uq5hFxfhvJ7cRJgzVlg0eNxL06CjksRhoZlU0QFHUWCLaIk4Loh
 fyNHVk0TL2iebopgFe/bGulpYtGsBFE2jhb2drdAkdoPnOPIs2bDWcFjCFp6ZfbauT
 pP6rWPJ6R+iw6hRxlUvTqbu7KP+mO2W51Z6jKCpYNR+UTP+UCA0f1IvBuSv2Dkss22
 LFs/lUS2Kazlg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id d3b09053;
 Thu, 27 Jan 2022 22:06:27 +0000 (UTC)
Date: Fri, 28 Jan 2022 07:06:12 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Latchesar Ionkov <lucho@ionkov.net>
Message-ID: <YfMXVNBqapNHFzAd@codewreck.org>
References: <CAFkjPTne8PxxAd=gQ-LYYkRmwz+uhbqYtNzZiTkvL8ANHyZMbA@mail.gmail.com>
 <CAP6exYKZqJpfR+Tr3CwJrNE2Pzd-Fd2gYYW_P+he=ZStbBMHUA@mail.gmail.com>
 <YfIuBlKzYasIhtxf@codewreck.org>
 <CAOha14wmd61e0GbBY9Dsb7R=dcEmnVvvZe2R-n99iY2hOd9+NA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOha14wmd61e0GbBY9Dsb7R=dcEmnVvvZe2R-n99iY2hOd9+NA@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Latchesar Ionkov wrote on Thu, Jan 27, 2022 at 01:13:07PM
 -0700: > I have no idea why opened fids should be kept in the list, but if
 you > do, you should also make sure you keep the mode they were ope [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1nDCud-00HABf-OD
Subject: Re: [V9fs-developer] 9p was broken by
 478ba09edc1f2f2ee27180a06150cb2d1a686f9c
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, ron minnich <rminnich@gmail.com>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Latchesar Ionkov wrote on Thu, Jan 27, 2022 at 01:13:07PM -0700:
> I have no idea why opened fids should be kept in the list, but if you
> do, you should also make sure you keep the mode they were opened too
> and don't return the ones that you shouldn't be returned in that
> particular case.

Greg's commit message seems to say this is about using an open fid when
doing an operation on an already open fd, e.g. ftruncate() would not use
the "correct" fid.

open files should have a fid in filp->private_data but when we reach the
setattr function (e.g. v9fs_vfs_setattr_dotl) the filp is nowhere to be
found, which means we need a new lookup -- and incidentaly we don't know
either if the fd the operation was meant for was open as RO or RW.


Looking at do_truncate again specifically now, it looks like that when a
truncate was invoked through ftruncate newattrs.ia_file will be set with
newattrs.ia_valid |= ATTR_FILE . . . so we actually can get the correct
file and I think we can just revert Greg's patch, which will avoid this
whole mess and fix the issue... And we actually already do since
66246641609b ("9p: retrieve fid from file when file instance exist.")
(which came a bit later to fix another problem with wrong fid being
used)...


So just reverting Greg's patch should work for all use cases and will
spare the problem of looking for the right flags.


I still want to take time to test for regressions, so will only send the
revert patch tomorrow, but if it works we can just use lookup for
non-open fids as we used to do and everyone should be happy.


Greg -- if you have time for tests as well I'd appreciate it, as you
originally had found that problem :)
(well, commit message has a reproducer so I'll at least try that)
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
