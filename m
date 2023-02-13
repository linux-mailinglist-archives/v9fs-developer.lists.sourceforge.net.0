Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A656953F5
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Feb 2023 23:38:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pRhSo-0005bN-II;
	Mon, 13 Feb 2023 22:38:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pRhSn-0005bH-BW
 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Feb 2023 22:38:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qc0SPeDsGDMpENtqVoAdYcVFFZk3bBzBoe7PO+dRXfs=; b=EMOe7+EEjN3RNdMMCTOcl2mJjZ
 7ZaQMHF1CgZfQkcTKfWu5Wc7DohRTInmdyM3S5TbNYfE47xIwhWvkyJwWhehmn+VKXrQmzLcQH5oD
 7ENzV4Ly+/4IQEblFuSpSS5hqxjCGh1t6kb/TZoGGBlBrfxJ7LqXwVhYqhOiNbljcczo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qc0SPeDsGDMpENtqVoAdYcVFFZk3bBzBoe7PO+dRXfs=; b=ZDwCmCq31TaLNNq2baG1+wu+Dq
 zMqkJKXgTu4vVNyAaHi8m5i87yjWnt9Uz9PJpdhGX/PupY67Ns1AibCKoXLtRIDHwX0zj6nadYCg9
 beeyZhUaicXSzxp2K9A+dTiH/yq2ycuVBz4L9XJyMKVlRTlak64yit5O1DDJW28BXp10=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pRhSl-003hBM-3a for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Feb 2023 22:38:20 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id B108AC01F; Mon, 13 Feb 2023 23:38:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676327914; bh=qc0SPeDsGDMpENtqVoAdYcVFFZk3bBzBoe7PO+dRXfs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rIAoHAMVJeH0jUxCLHmE5cjx0rHAHVht2Ln/jv+EnjiU6pl1fWHUlqvHYlDnIxQy6
 EmAlEraE2Ik1P/ZlaLBxCKFBTeErM7QWYV7C+8Lno30MLwRA/ZLAGXZgOr6a2l4L3F
 hOJ8EgMpqAMdAeOzyly1oqio91Veov/l/7Xl1d/RR+3qqj0oVqDt03/rEBqc3ZtrY8
 I6dV0eZxz2fjw+3pV3fsYoglkQhHFfMG+PaGJyaV9DHVrMaz3C8Pr6b6jrGjrvMeNj
 4xe/3oj2JBTI1XyID2ESMWuXO5TS3uYV7HfUUWJY8EdDAoKhGV0yVwf7BvKsLU8Lkh
 7rE+3mQaRg7PQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id E227CC009;
 Mon, 13 Feb 2023 23:38:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676327914; bh=qc0SPeDsGDMpENtqVoAdYcVFFZk3bBzBoe7PO+dRXfs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rIAoHAMVJeH0jUxCLHmE5cjx0rHAHVht2Ln/jv+EnjiU6pl1fWHUlqvHYlDnIxQy6
 EmAlEraE2Ik1P/ZlaLBxCKFBTeErM7QWYV7C+8Lno30MLwRA/ZLAGXZgOr6a2l4L3F
 hOJ8EgMpqAMdAeOzyly1oqio91Veov/l/7Xl1d/RR+3qqj0oVqDt03/rEBqc3ZtrY8
 I6dV0eZxz2fjw+3pV3fsYoglkQhHFfMG+PaGJyaV9DHVrMaz3C8Pr6b6jrGjrvMeNj
 4xe/3oj2JBTI1XyID2ESMWuXO5TS3uYV7HfUUWJY8EdDAoKhGV0yVwf7BvKsLU8Lkh
 7rE+3mQaRg7PQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 31ec479b;
 Mon, 13 Feb 2023 22:38:05 +0000 (UTC)
Date: Tue, 14 Feb 2023 07:37:50 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Y+q7vvc2Sek8d7wG@codewreck.org>
References: <20230211075023.137253-1-asmadeus@codewreck.org>
 <4256068.OCvV93pMlr@silver> <2973654.udxrvWzM6v@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2973654.udxrvWzM6v@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Mon, Feb 13,
 2023 at 07:45:34PM
 +0100: > On Monday, February 13, 2023 7:26:54 PM CET Christian Schoenebeck
 wrote: > > On Saturday, February 11, 2023 8:50:18 AM CET Domin [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pRhSl-003hBM-3a
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

Christian Schoenebeck wrote on Mon, Feb 13, 2023 at 07:45:34PM +0100:
> On Monday, February 13, 2023 7:26:54 PM CET Christian Schoenebeck wrote:
> > On Saturday, February 11, 2023 8:50:18 AM CET Dominique Martinet wrote:
> > > I've been working on async RPCs for a while and never had time to debug
> > > the last issues this had, but by limiting the async clunks to failures
> > > the impact is drastically smaller and I've not been able to reproduce
> > > any more bug so far.
> > > 
> > > This will require some more testing and I'm tempted to say this is not
> > > worth rushing this into the merge window next week-ish; the new problem
> > > Jens reported with task_work isn't really new and I'd rather get this
> > > right than rush new bugs in given the sour experience I've had with this
> > > patch series... Hopefully it'll get in this time.
> > > With that in mind I plan to take the patches in to my -next branch after
> > > the merge window, so this has time to get reviewed first.
> > > 
> > > I'd like to measure impact on performance as well, but really spent way
> > > more time on this than I already have, so that'll have to wait a bit.
> > 
> > I have not observed performance degradation, nor any (new) errors. So for
> > this entire series:
> > 
> > Tested-by: Christian Schoenebeck <linux_oss@crudebyte.com>
> 
> Sorry, strike that. :-/

Ugh! thanks for the test, I'm not making much sense of the trace (folio
wait bit means some background write isn't happening when flushing
before the setattr?) but I'll try to reproduce and have a look
today/tomorrow

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
