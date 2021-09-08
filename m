Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 66714403B47
	for <lists+v9fs-developer@lfdr.de>; Wed,  8 Sep 2021 16:15:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mNyMK-0001AO-Tz; Wed, 08 Sep 2021 14:15:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1mNyMI-0001A7-UO
 for v9fs-developer@lists.sourceforge.net; Wed, 08 Sep 2021 14:15:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XDwgTEEmY7D5xsm4i63bVcL3f4nzyaOx36vSvg92ttg=; b=RHqEucKX+QTPVIVpGUA19r7LIu
 P+O6ji4Z3WNyTT8S84lZPSUsX/qfgd7uwbCM++ooa9Jwkn+5QtHa/BBqQGWZzoNqrFoqKcP48o+k6
 nTTNzA/MvjxCeGODhD9pVcFzJqwwkuGvO5UT0noQuTlQsNHXdH+pqJC0+03XYcH2ujW4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XDwgTEEmY7D5xsm4i63bVcL3f4nzyaOx36vSvg92ttg=; b=d
 MpvRbqxDtBhT5B0wIXSInW8AOQmJFjTW9Pqjv1Towhtd24Sm4rsYNY9RzVWOtzpt/8Eg/VcZaRKB+
 IVq7O6jU5EI/WdA0nPnIRNJ1dgoDmj68aeqRChHavMydaHgGtGSkDGj2kpvCwEIYHFcIdRNNIQp+Z
 w3rhrmdbCECKSVxs=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mNyMD-003PGb-Fv
 for v9fs-developer@lists.sourceforge.net; Wed, 08 Sep 2021 14:15:26 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 883E8C01B; Wed,  8 Sep 2021 16:15:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1631110510; bh=XDwgTEEmY7D5xsm4i63bVcL3f4nzyaOx36vSvg92ttg=;
 h=Date:From:To:Cc:Subject:From;
 b=J5ViWEZdT4YmcsPYMtZ8HER1CNnX19Oan/PeMPxRvVIEjQII+c0zr5BCCFLq4fhnb
 DzE6lu6HNytWbh5Y0aAC/8xLGYQtOEp0aRFk6qOFP+hs/L8iT3K8YtiSATHKxWOnsN
 bm7RwT4OUzG5svzurmvHRK3KOcnrzN6aCnWg6vpUtGPPE+jMTuv4fJCZpOmneGnOad
 981+iriagL9Z5iAznevQWN8NykC9Vpi4ilyc6DfKHxuFh9H5WQZO+xWD+lmf/6Ucs+
 Aedkuacl2xVAAbb/nokXdhF/9Bn9kbcHEm2Ab93suf9Kvf3BAXxjDixK9Jdym5Wymx
 wA+gSO7Hxm4Vg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 80F89C009;
 Wed,  8 Sep 2021 16:15:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1631110510; bh=XDwgTEEmY7D5xsm4i63bVcL3f4nzyaOx36vSvg92ttg=;
 h=Date:From:To:Cc:Subject:From;
 b=J5ViWEZdT4YmcsPYMtZ8HER1CNnX19Oan/PeMPxRvVIEjQII+c0zr5BCCFLq4fhnb
 DzE6lu6HNytWbh5Y0aAC/8xLGYQtOEp0aRFk6qOFP+hs/L8iT3K8YtiSATHKxWOnsN
 bm7RwT4OUzG5svzurmvHRK3KOcnrzN6aCnWg6vpUtGPPE+jMTuv4fJCZpOmneGnOad
 981+iriagL9Z5iAznevQWN8NykC9Vpi4ilyc6DfKHxuFh9H5WQZO+xWD+lmf/6Ucs+
 Aedkuacl2xVAAbb/nokXdhF/9Bn9kbcHEm2Ab93suf9Kvf3BAXxjDixK9Jdym5Wymx
 wA+gSO7Hxm4Vg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 42469251;
 Wed, 8 Sep 2021 14:15:05 +0000 (UTC)
Date: Wed, 8 Sep 2021 23:14:50 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <YTjFWjkz0nPb+sZe@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus,
 The following changes since commit ff1176468d368232b684f75e82563369208bc371:
 Linux 5.14-rc3 (2021-07-25 15:35:14 -0700) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1mNyMD-003PGb-Fv
Subject: [V9fs-developer] [GIT PULL] 9p update for 5.15
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
Cc: linux-fsdevel@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Linus,

The following changes since commit ff1176468d368232b684f75e82563369208bc371:

  Linux 5.14-rc3 (2021-07-25 15:35:14 -0700)

are available in the Git repository at:

  https://github.com/martinetd/linux tags/9p-for-5.15-rc1

for you to fetch changes up to 9c4d94dc9a64426d2fa0255097a3a84f6ff2eebe:

  net/9p: increase default msize to 128k (2021-09-05 08:36:44 +0900)

(the commit date is a bit young as the default msize change has been
sent fairly recently, happy to delay one release if you'd like it to sit
in -next for longer than a few days before merging but large msize
codepath is already widely in use as the impact is big on performance.
Changing the default should help people who don't know about the
option.)
----------------------------------------------------------------
9p for 5.15-rc1

a couple of harmless fixes, increase max tcp msize (64KB -> 1MB),
and increase default msize (8KB -> 128KB)

The default increase has been discussed with Christian
for the qemu side of things but makes sense for all supported
transports

----------------------------------------------------------------
Christian Schoenebeck (2):
      net/9p: use macro to define default msize
      net/9p: increase default msize to 128k

Dominique Martinet (1):
      net/9p: increase tcp max msize to 1MB

Harshvardhan Jha (1):
      9p/xen: Fix end of loop tests for list_for_each_entry

Xie Yongji (1):
      9p/trans_virtio: Remove sysfs file on probe failure

 net/9p/client.c       | 6 ++++--
 net/9p/trans_fd.c     | 2 +-
 net/9p/trans_virtio.c | 4 +++-
 net/9p/trans_xen.c    | 4 ++--
 4 files changed, 10 insertions(+), 6 deletions(-)
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
