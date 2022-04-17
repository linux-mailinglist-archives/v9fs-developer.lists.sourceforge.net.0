Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE955049B0
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Apr 2022 00:18:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ngDDu-0007gX-DK; Sun, 17 Apr 2022 22:18:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1ngDDt-0007gP-0V
 for v9fs-developer@lists.sourceforge.net; Sun, 17 Apr 2022 22:18:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R+9s+6F3BACaHFBXL1V1byfLZUQtl2m1S2ZeFTjeprQ=; b=GKTvx2/J0XMf6g0a38Dm2Sv0pH
 TzHfwpcYb5gGRPdSzomv4EqZJvoUuvC772nHWxhwcpFJkRWSbkj7qvh2GStnYMMEqR+ELgDjTFtOK
 mvxwn65tjKnUwyxwEQAl+ZHxXwwNLkJlBsKgUnFyrLyBBRNSGQ+H/NI3dKf4WbTDf/PM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=R+9s+6F3BACaHFBXL1V1byfLZUQtl2m1S2ZeFTjeprQ=; b=LNFlwKDoB//DyI4aUGPzvepKbD
 g0FRequ2UFGtw9fEHFJCpe9R8TVYchYuTNrBCnzepvyQDdxcYSASoid5r2hX88SsOq1miMhcbEBcm
 tR9kDnF9+p5yMqCu1KdBvGyeAQXUzSW3KLm80m2S/eNvxZxBYMPelrx9LVGLQ9XzaK2w=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ngDDs-0005kn-Nu
 for v9fs-developer@lists.sourceforge.net; Sun, 17 Apr 2022 22:18:25 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 6A483C020; Mon, 18 Apr 2022 00:18:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1650233896; bh=R+9s+6F3BACaHFBXL1V1byfLZUQtl2m1S2ZeFTjeprQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zdX+mQu14BWShbXH58oAjlf+I1q8cUZjDhWlxP3rgLOa6kb3fMdIuYpEgxZYXa1lj
 JneQ7jgjQRN1jrRG4CQbzPR3VnZXPt4Fm2kWd1Hyo/u25lDlGfYvW6NPHRcwKK7PZj
 eg/Qd744cXD1VWmwtxJiRNCNmNbkoPFi9fb8SandcdUXrhXmX+UXgqW0wLKCD/uZ+6
 cM2vu3EHeI0OfJu31pbKx7/WtSJJItUGC9nyur0UnV2tVsFE6QeXB31k20otH3PyLi
 E46cx6pZ7XWGT6cA0YTzYSs6a3wS/jp+rG08UMB8kj2N/GamAVfQcT/bPBtCAjATsO
 kRpfbSx3zhVJg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 61C07C009;
 Mon, 18 Apr 2022 00:18:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1650233894; bh=R+9s+6F3BACaHFBXL1V1byfLZUQtl2m1S2ZeFTjeprQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AERIv7yvLj5DI+RoWTt4FSHIcMJVL5DgKPQQEcZmURu3tnQlBRvhJajTmVSUCjmqu
 krM9SVxJQ492j+CKF4vntq4VGFwehFtm/wTn+TBWJ18X6B8iv3Mykd9qi/JlSd17wh
 CldTzCQvcXBhp6dELMu5lxT5+Ycb44Q6fCnHplYqfmJGel7YtFhmxytUeYTjugE4Ku
 Cr/qrbg5CktegK54JLe04WLxn6PeCa2N/Uv1tA4Je0XeVqIEcZRHPaS1rTEDtnejrs
 4XI6V90ajgLapiqns6Cx2A15W6VGReDMmlM1Ijtl/TmgOfq9c+iu+z47hPOgp+q17s
 3lOic+jlEMvJw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 32b99519;
 Sun, 17 Apr 2022 22:18:08 +0000 (UTC)
Date: Mon, 18 Apr 2022 07:17:53 +0900
From: asmadeus@codewreck.org
To: David Howells <dhowells@redhat.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YlySEa6QGmIHlrdG@codewreck.org>
References: <CAAZOf26g-L2nSV-Siw6mwWQv1nv6on8c0fWqB4bKmX73QAFzow@mail.gmail.com>
 <2551609.RCmPuZc3Qn@silver> <YlwOdqVCBZKFTIfC@codewreck.org>
 <8420857.9FB56xACZ5@silver> <YlyFEuTY7tASl8aY@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YlyFEuTY7tASl8aY@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  (fixed the subject again and promoted David Howells to To,
 please read the previous couple of mails when you have time)
 asmadeus@codewreck.org
 wrote on Mon, Apr 18, 2022 at 06:22:26AM +0900: > Christian Schoenebeck wrote
 on Sun, Apr 17, 2022 at 03:52:43PM +0200: > > > From the looks of it, write
 fails in v9fs_write_beg [...] 
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1ngDDs-0005kn-Nu
Subject: [V9fs-developer] 9p EBADF with cache enabled (Was: 9p fs-cache
 tests/benchmark (was: 9p fscache Duplicate cookie detected))
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
 Greg Kurz <groug@kaod.org>, v9fs-developer@lists.sourceforge.net,
 kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

(fixed the subject again and promoted David Howells to To, please read
the previous couple of mails when you have time)

asmadeus@codewreck.org wrote on Mon, Apr 18, 2022 at 06:22:26AM +0900:
> Christian Schoenebeck wrote on Sun, Apr 17, 2022 at 03:52:43PM +0200:
> > > From the looks of it, write fails in v9fs_write_begin, which itself
> > > fails because it tries to read first on a file that was open with
> > > O_WRONLY|O_CREAT|O_APPEND.
> > > Since this is an append the read is necessary to populate the local page
> > > cache when writing, and we're careful that the writeback fid is open in
> > > write, but not about read...

BTW now this is understood here's a much simpler reproducer:

---append.c----
#include <fcntl.h>
#include <unistd.h>

int main(int argc, char *argv[]) {
	if (argc < 2)
		return 1;
	int fd = open(argv[1], O_WRONLY|O_APPEND);
	if (fd < 0)
		return 1;
	if (write(fd, "test\n", 5) < 0)
		return 1;
	return 0;
}
---

---
echo foo > foo
echo 3 > /proc/sys/vm/drop_caches
strace ./append foo
...
openat(AT_FDCWD, "foo", O_WRONLY|O_APPEND) = 3
write(3, "test\n", 5)                   = -1 EBADF (Bad file descriptor)
---

at 9p client level:
----
9pnet: (00000460) >>> TWALK fids 1,2 nwname 1d wname[0] t
9pnet: (00000460) >>> size=20 type: 110 tag: 0
9pnet: (00000460) <<< size=22 type: 111 tag: 0
9pnet: (00000460) <<< RWALK nwqid 1:
9pnet: (00000460) <<<     [0] 0.6e672b.6289a895
9pnet: (00000460) >>> TGETATTR fid 2, request_mask 6143
9pnet: (00000460) >>> size=19 type: 24 tag: 0
9pnet: (00000460) <<< size=160 type: 25 tag: 0
9pnet: (00000460) <<< RGETATTR st_result_mask=6143
<<< qid=0.6e672b.6289a895
<<< st_mode=000081ed st_nlink=1
<<< st_uid=1000 st_gid=100
<<< st_rdev=0 st_size=d538 st_blksize=126976 st_blocks=112
<<< st_atime_sec=1650233493 st_atime_nsec=697920121
<<< st_mtime_sec=1650233493 st_mtime_nsec=19911120
<<< st_ctime_sec=1650233493 st_ctime_nsec=19911120
<<< st_btime_sec=0 st_btime_nsec=0
<<< st_gen=0 st_data_version=0
9pnet: (00000460) >>> TWALK fids 2,3 nwname 0d wname[0] (null)
9pnet: (00000460) >>> size=17 type: 110 tag: 0
9pnet: (00000460) <<< size=9 type: 111 tag: 0
9pnet: (00000460) <<< RWALK nwqid 0:
9pnet: (00000460) >>> TLOPEN fid 3 mode 32768
9pnet: (00000460) >>> size=15 type: 12 tag: 0
9pnet: (00000460) <<< size=24 type: 13 tag: 0
9pnet: (00000460) <<< RLOPEN qid 0.6e672b.6289a895 iounit 1f000
9pnet: (00000460) >>> TREAD fid 3 offset 0 8192
9pnet: (00000460) >>> size=23 type: 116 tag: 0
9pnet: (00000460) <<< size=8203 type: 117 tag: 0
9pnet: (00000460) <<< RREAD count 8192
9pnet: (00000460) >>> TREAD fid 3 offset 8192 16384
9pnet: (00000460) >>> size=23 type: 116 tag: 0
9pnet: (00000460) <<< size=16395 type: 117 tag: 0
9pnet: (00000460) <<< RREAD count 16384
9pnet: (00000460) >>> TXATTRWALK file_fid 2, attr_fid 4 name security.capability
9pnet: (00000460) >>> size=36 type: 30 tag: 0
9pnet: (00000460) <<< size=11 type: 7 tag: 0
9pnet: (00000460) <<< RLERROR (-95)
9pnet: (00000460) >>> TREAD fid 3 offset 24576 30008
9pnet: (00000460) >>> size=23 type: 116 tag: 0
9pnet: (00000460) <<< size=30019 type: 117 tag: 0
9pnet: (00000460) <<< RREAD count 30008
9pnet: (00000460) >>> TWALK fids 1,4 nwname 1d wname[0] foo
9pnet: (00000460) >>> size=22 type: 110 tag: 0
9pnet: (00000460) <<< size=22 type: 111 tag: 0
9pnet: (00000460) <<< RWALK nwqid 1:
9pnet: (00000460) <<<     [0] 0.6e66f9.625c86a5
9pnet: (00000460) >>> TGETATTR fid 4, request_mask 6143
9pnet: (00000460) >>> size=19 type: 24 tag: 0
9pnet: (00000460) <<< size=160 type: 25 tag: 0
9pnet: (00000460) <<< RGETATTR st_result_mask=6143
<<< qid=0.6e66f9.625c86a5
<<< st_mode=000081a4 st_nlink=1
<<< st_uid=0 st_gid=0
<<< st_rdev=0 st_size=9 st_blksize=126976 st_blocks=8
<<< st_atime_sec=1650233249 st_atime_nsec=226674419
<<< st_mtime_sec=1650233253 st_mtime_nsec=226727529
<<< st_ctime_sec=1650233253 st_ctime_nsec=226727529
<<< st_btime_sec=0 st_btime_nsec=0
<<< st_gen=0 st_data_version=0
9pnet: (00000460) >>> TWALK fids 4,5 nwname 0d wname[0] (null)
9pnet: (00000460) >>> size=17 type: 110 tag: 0
9pnet: (00000460) <<< size=9 type: 111 tag: 0
9pnet: (00000460) <<< RWALK nwqid 0:
9pnet: (00000460) >>> TLOPEN fid 5 mode 33793
9pnet: (00000460) >>> size=15 type: 12 tag: 0
9pnet: (00000460) <<< size=24 type: 13 tag: 0
9pnet: (00000460) <<< RLOPEN qid 0.6e66f9.625c86a5 iounit 1f000
9pnet: (00000460) >>> TWALK fids 4,6 nwname 0d wname[0] (null)
9pnet: (00000460) >>> size=17 type: 110 tag: 0
9pnet: (00000460) <<< size=9 type: 111 tag: 0
9pnet: (00000460) <<< RWALK nwqid 0:
9pnet: (00000460) >>> TLOPEN fid 6 mode 2
9pnet: (00000460) >>> size=15 type: 12 tag: 0
9pnet: (00000460) <<< size=24 type: 13 tag: 0
9pnet: (00000460) <<< RLOPEN qid 0.6e66f9.625c86a5 iounit 1f000
9pnet: (00000460) >>> TXATTRWALK file_fid 4, attr_fid 7 name security.capability
9pnet: (00000460) >>> size=36 type: 30 tag: 0
9pnet: (00000460) <<< size=11 type: 7 tag: 0
9pnet: (00000460) <<< RLERROR (-95)
9pnet: (00000460) >>> TREAD fid 5 offset 0 9
9pnet: (00000460) >>> size=23 type: 116 tag: 0
9pnet: (00000460) <<< size=11 type: 7 tag: 0
9pnet: (00000460) <<< RLERROR (-9)
9pnet: (00000460) >>> TCLUNK fid 5 (try 0)
9pnet: (00000460) >>> size=11 type: 120 tag: 0
9pnet: (00000460) <<< size=7 type: 121 tag: 0
9pnet: (00000460) <<< RCLUNK fid 5
9pnet: (00000460) >>> TCLUNK fid 3 (try 0)
9pnet: (00000460) >>> size=11 type: 120 tag: 0
9pnet: (00000460) <<< size=7 type: 121 tag: 0
9pnet: (00000460) <<< RCLUNK fid 3
-------

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
