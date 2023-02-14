Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAE3696232
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Feb 2023 12:17:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pRtJD-0003IX-CX;
	Tue, 14 Feb 2023 11:17:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pRtJB-0003IQ-3L
 for v9fs-developer@lists.sourceforge.net;
 Tue, 14 Feb 2023 11:17:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/eJLX6N8Wql6x4hLGnwhV1ycbyVYDBW+JqG/0usBf8c=; b=ZGmCY5+dPsLX8vTXTYphP3g6VQ
 pH4hb/KRc4e7xZRhgyhuYgQ4qmVXySCmbU4onUUi8MvONOz3wnf3Fm7FleViZrMpI4RQbGONXF8lQ
 VQKgCNK2p8jmmi7DdtaTlQYFWnQ+x6Y+uK02ZuGAbQHg+UO4vQbIeXO4mr8lOSGlzlR0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/eJLX6N8Wql6x4hLGnwhV1ycbyVYDBW+JqG/0usBf8c=; b=TI7BC9hqnUXjk+Zx8AtRRbKdu8
 6o0ZnlMD8aP7UZi2F5clWokwggQCOKHBDcsdNwciey/WP7H4BhGCaf+mL5GVqdKsCnEjC+hiuEmv4
 BwbXqDpZbhcA+aKznP+RXyfR/tpMgEIyatTAAdheFs3KBQO9Hmfh7aU2N5O17hIoyaFA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pRtJ5-0048Wm-5F for v9fs-developer@lists.sourceforge.net;
 Tue, 14 Feb 2023 11:17:13 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id DA48EC01E; Tue, 14 Feb 2023 12:17:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676373443; bh=/eJLX6N8Wql6x4hLGnwhV1ycbyVYDBW+JqG/0usBf8c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1qSqZIRf8f79863Rt5SSzu0gb9GWeRyNw4zSD3bw4+SAWl6IYgD/6uUvANG+cy6VJ
 z8lsR8hE3Zw+voqjc88eXUNNUL4Shl1cejt83NMWHslUyropbhESBZfhwwDrPnG0Ju
 qXmGw3sTN74pGhGOmsGj+V/KXy8VtQt+ThNKG9wTJZnNYVZbwO0Cv7uQFFDMwWksc3
 Y8NdaPNSEDQKQRH0Znj9qZdyrDilclRdhr+sDmal+Q41KZUSo6G8ltuchjbp3h5d8N
 L1JSR6hp7U0sr2DUerslNSHtYflwTSpBYqFPLhVNMfJH4Gl/99VzbrW9bAeUg+jCU5
 0Zw+vmF6ej0+Q==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 30937C009;
 Tue, 14 Feb 2023 12:17:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676373442; bh=/eJLX6N8Wql6x4hLGnwhV1ycbyVYDBW+JqG/0usBf8c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PO9bv7qBRs2vQdKPuM0RSEXej0qKOwrCJXiVIfwgIJn1UhHzwhtS/4f00TuxAWeqF
 nQj32YMFGCi2//GMEdlUXXlQoxJD/T43GECn6Au3N/cOGm78QDpSi9YUxjoZK4wvtN
 WNoItWJH/0O4tOoBUN7UXmN80NjlEl8v9A+JCMzUVq3n9I1g9i4KUkNfk4hyEfmX1Y
 msMM/39F4SWNPPZPnDRFUsM2n0HyMFYq4BIh2agAYlqGol7mB+/11W3tG3j23lsk8z
 URVTX/ZnKT/ok9dZV+co8wkOQnmiRioOyomXHa5Q7kGvO/I6lh81VqvhWXSwYWfshU
 rdYiMfi2o6gfQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 6b2bd355;
 Tue, 14 Feb 2023 11:16:53 +0000 (UTC)
Date: Tue, 14 Feb 2023 20:16:38 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Y+ttlog6sth3vPHJ@codewreck.org>
References: <20230211075023.137253-1-asmadeus@codewreck.org>
 <2973654.udxrvWzM6v@silver> <Y+q7vvc2Sek8d7wG@codewreck.org>
 <2526146.SOovFYVi4y@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2526146.SOovFYVi4y@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Tue, Feb 14,
 2023 at 10:34:36AM
 +0100: > > Ugh! thanks for the test, I'm not making much sense of the trace
 (folio > > wait bit means some background write isn't happeni [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pRtJ5-0048Wm-5F
Subject: Re: [V9fs-developer] [PATCH 0/5] Take 3 at async RPCs and no longer
 looping forever on signals
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
Cc: Jens Axboe <axboe@kernel.dk>, Latchesar Ionkov <lucho@ionkov.net>,
 Eric Van Hensbergen <ericvh@gmail.com>, linux-kernel@vger.kernel.org,
 Pengfei Xu <pengfei.xu@intel.com>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Tue, Feb 14, 2023 at 10:34:36AM +0100:
> > Ugh! thanks for the test, I'm not making much sense of the trace (folio
> > wait bit means some background write isn't happening when flushing
> > before the setattr?) but I'll try to reproduce and have a look
> > today/tomorrow
> 
> Yes, apparently it tries to write dirty pages of the mapped file and keeps
> hanging there [fs/9p/vfs_inode_dotl.c:586]:

Yeah, it'd help to get the trace of the thread actually trying to do the
IO, if it still exists.
I had some hangs in the check that there are no flush in flight at some
point, and I thought I fixed that, but I can't really see anywhere else
that'd start hanging with this... it'll be clearer if I can reproduce.


Anyway, I found another bug, just running ./configure on a random project
(picked coreutils tarball) fails with interrupted system call ?!

checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking whether make supports nested variables... yes
checking whether make supports nested variables... (cached) yes
checking for gcc... gcc
./configure: line 6385: can't create conftest.c: Interrupted system call
checking whether the C compiler works... no
sed: can't read conftest.c: No such file or directory
configure: error: in `/mnt/coreutils-9.1':
configure: error: C compiler cannot create executables
See `config.log' for more details


This obviously doesn't happen if I run with `sh -x configure`, but
through execsnoop I caught it's just calling 'gcc conftest.c' and
there's nothing special in here... But it doesn't happen without these
patches, so I get something to dig at first.
With a bit of luck it's the same root cause...

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
