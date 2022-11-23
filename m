Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B62A8634F6A
	for <lists+v9fs-developer@lfdr.de>; Wed, 23 Nov 2022 06:16:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxi7Q-0006Ya-Vd;
	Wed, 23 Nov 2022 05:16:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1oxi7P-0006YT-0G
 for v9fs-developer@lists.sourceforge.net;
 Wed, 23 Nov 2022 05:16:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iPT0LtABgClIL1IGlsba5+6joAsD3/Hw7Ap3XlgNN6I=; b=ItTTpYnHVmK/wYPDrrEOvtXFry
 OIANZfxYmbptSF4S+xS6HqCcztTEyvGsDAEDwv8ns/r+gQ7kCr9vnrTmcPfh3OKhh7YkqJPe6xqHV
 mN492qwuAKFgzv9+vTmfKi/bNBT6BXM0rhycmis+XbkL6xw9SV3/IYZGqs2lC9Z7eVkg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=iPT0LtABgClIL1IGlsba5+6joAsD3/Hw7Ap3XlgNN6I=; b=Y
 m/u387Ao6aG2OIDbAEUC+rrlDqRuifaP7/WeA9aNn0VuCCFLgnPR1fbC9O1+PJIy+45WgbRtlqpFD
 oWhpoqgxjEOh+8relm9zEnDnF/O9VudES/cRv+wovh7nUnNIFMNywliDc7g43O38DnbV7t/WEkGiK
 qTd2mL4qp7n2dPgU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxi7N-000661-Nx for v9fs-developer@lists.sourceforge.net;
 Wed, 23 Nov 2022 05:16:18 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 38E78C01A; Wed, 23 Nov 2022 06:16:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669180578; bh=iPT0LtABgClIL1IGlsba5+6joAsD3/Hw7Ap3XlgNN6I=;
 h=Date:From:To:Cc:Subject:From;
 b=JYkzv23NAjukeH8HwLY0NAFYAkA6kPIrEx73o+KCrW8aF0yymlWei3AwOh4a/OSLW
 I82dsaPIWihf5RRxqllAP/pCmaIgo+N/HiQtb8X1T7/SB3SuMcoayJOnh3L4Qy9XeZ
 r4PrZ7AJmXNDl18oQbwvcZ3A2R0g2HKtNhWxLakU5D9ZHX0Z1w8FeaoJ8D/GF22mO5
 lTMMXx++00/JUCRKtAZlEkpzQUrNUkZti0+YudswqC3jxmsE72djKxTKk/PZ03unJs
 3r/jgi3arKzGeZMH4UyoSoYGoiP5NqMrDkJAwVHOroz+4Q0mdytwJGYKpISLpdDHCy
 mNdYRnFKK7vzg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 1A4CAC009;
 Wed, 23 Nov 2022 06:16:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669180568; bh=iPT0LtABgClIL1IGlsba5+6joAsD3/Hw7Ap3XlgNN6I=;
 h=Date:From:To:Cc:Subject:From;
 b=KTas6DayCTmDcJZ+jvY6SnkEXjUxPMtowIElXhAWh0eD1FI3T7NPjLHOooyTD86PZ
 6V+yNE7B6DQXPotPoI3tWiMU8dtX4weaThSpfqn1xAmoSN0ni0pPebRpkOBhde9Wc/
 A3TfpiPKlkgmvlIyoeafduKBsiG77577wyaYdV2YGy+Em7Hf2nsIo3SmAiP603vzPP
 5YIR43jnjwJbmnCy2l58hbEIjd9PguiJwvFFL31IJEf8NoTND5d3rBgFj6x3UyJwAN
 p8hfUCuNeheNOZgvhsCSR3dTveVDHBpDs84cxJPvOmZNeQ9IBsqXTHmpX+kPW0QC+i
 ToUSjs7GJy63g==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 315a764d;
 Wed, 23 Nov 2022 05:15:56 +0000 (UTC)
Date: Wed, 23 Nov 2022 14:15:41 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <Y32sfX54JJbldBIt@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 f0c4d9fc9cc9462659728d168387191387e903cc:
 Linux 6.1-rc4 (2022-11-06 15:07:11 -0800) are available in the Git repository
 at: Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oxi7N-000661-Nx
Subject: [V9fs-developer] [GIT PULL] 9p fixes for 6.1-rc7
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
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The following changes since commit f0c4d9fc9cc9462659728d168387191387e903cc:

  Linux 6.1-rc4 (2022-11-06 15:07:11 -0800)

are available in the Git repository at:

  https://github.com/martinetd/linux tags/9p-for-6.1-rc7

for you to fetch changes up to 391c18cf776eb4569ecda1f7794f360fe0a45a26:

  9p/xen: check logical size for buffer size (2022-11-23 14:01:27 +0900)

(yes, that's just now -- sorry, I just noticed a whitespace problem as I
prepared this mail, there's no code change with what was tested and in
-next for a few days)

----------------------------------------------------------------
9p-for-6.1-rc7

Two fixes:
 - 9p now uses a variable size for its recv buffer, but every place
hadn't been updated properly to use it and some buffer overflows
have been found and needed fixing.
There's still one place where msize is incorrectly used in a safety
check (p9_check_errors), but all paths leading to it should already
be avoiding overflows and that patch took a bit more time to get
right for zero-copy requests so I'll send it for 6.2
 - yet another race condition in p9_conn_cancel introduced by a
fix of a syzbot report in the same place, maybe at some point
we'll get it right without burning it all down...

----------------------------------------------------------------
Dominique Martinet (1):
      9p/xen: check logical size for buffer size

GUO Zihua (2):
      9p/fd: Fix write overflow in p9_read_work
      9p/fd: Use P9_HDRSZ for header size

Zhengchao Shao (1):
      9p/fd: fix issue of list_del corruption in p9_fd_cancel()

 net/9p/trans_fd.c  | 24 +++++++++++++-----------
 net/9p/trans_xen.c |  9 +++++++++
 2 files changed, 22 insertions(+), 11 deletions(-)
 9 files changed, 254 insertions(+), 28 deletions(-)
--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
