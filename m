Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D7E647A59
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Dec 2022 00:51:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p3Qfj-0005cv-0e;
	Thu, 08 Dec 2022 23:51:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1p3Qfh-0005cl-HD
 for v9fs-developer@lists.sourceforge.net;
 Thu, 08 Dec 2022 23:51:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QUvoOJxMSTsrot0jUwJ6h/lLkW+XnJ1Zn8GsM7vrCDg=; b=Ui4ONbQEhf35+AD/YHi3XohRoJ
 iTR6rUESdMp77VgnzEktLmjpg8bGiMlEbz/NvcPME/YDWHVS/UDxv7TIxjm1up/RSWtQCkmFhCQBD
 D0j59hy15Vz0ky4FK0W+IvQdXoBGkQh9/jK5MJA0rM9UE/Tm0YCUkeD8gXd9n3Fkb+GM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QUvoOJxMSTsrot0jUwJ6h/lLkW+XnJ1Zn8GsM7vrCDg=; b=ciSdLgJKLII1syVKyiZwgmd7Dd
 o3O1GT7284uukvGMkrnzGpuYt2R2SeYkgc/KuzCfWdS8Pt77oCBoEUJIqSPzdegGToKoENprkLK8+
 bgoRmIbiK+s5zMAqT9cMGTaPOKRzODR8eSuZ1sTx/fdVzpQFlPlPkv4gCei0w0b49QsI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p3Qfb-00Ahee-9s for v9fs-developer@lists.sourceforge.net;
 Thu, 08 Dec 2022 23:51:21 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 38001C020; Fri,  9 Dec 2022 00:51:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1670543478; bh=QUvoOJxMSTsrot0jUwJ6h/lLkW+XnJ1Zn8GsM7vrCDg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vu22wlziMMcLVK1KA3slXqgrpkOMDID+soanRi0cM+aOiopn59WbPjqdGfmJueNrR
 +QACWd22NOeBoF16xdAYlBeP+BZzflNIXmzPBKDarNBZKtO0d2quWPR1dosB/54Gwd
 rHIk4x6oD3ilP4MflJkRYQUnkMhnIPz7TRoLBkpkiYhp9ACa4fKKCYC26O2C6EYmyS
 1ThrWX+WNQDfx1P5h2d4H33EIy2fDCSOxBPsobKmg1RN9oNDhnsaqcBfBBS4I/mG0O
 /Mls1ssc0hv+Ij1gdZ8fQBTIclG10YAGnVOcPhk1jxupAEw+XrTjEBVYGxETZG60V8
 4bK3qTBc7EVjw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id BA557C01B;
 Fri,  9 Dec 2022 00:51:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1670543476; bh=QUvoOJxMSTsrot0jUwJ6h/lLkW+XnJ1Zn8GsM7vrCDg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XYHMzXYqGnkharO6IuJq1hzrX3JD6HJ4sJ2r1jS3IKdJpTpa8YI2pEspYu7ZaLo8r
 lpCRdfdPOd0KxG47IcxY62b+KdsXieU6JB7U9sfQbE1llp1vg2Jcacj+DRU99X6J5p
 NlP2QpPxLeuMLqaZRlG0t4RSPqOawzDL7T+LBpjb++nhgB444AWtQk8j+KIagldtAa
 gDrRyhRgIuLWLB/YYUiaqoml6SlQuSjw/8vlTGiIHzWx10NjUenktCsMKdjWGGORoL
 MEsyQwq24cwdtpAIy++mjyQZtXz+W8ZA+VPL9B3fUtxgVolSZv76/OJGnyowbFGkg/
 jtO6h2NOieW2A==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 168aa860;
 Thu, 8 Dec 2022 23:51:01 +0000 (UTC)
Date: Fri, 9 Dec 2022 08:50:46 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Y5J4Voie1ik6BqnR@codewreck.org>
References: <20221205124756.426350-1-asmadeus@codewreck.org>
 <3368929.hG1Ktuj5m1@silver> <Y45wZEvO8gOanV85@codewreck.org>
 <167052961.MU3OA6Uzks@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <167052961.MU3OA6Uzks@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Thu, Dec 08,
 2022 at 04:51:27PM
 +0100: > Right, looks like most of it should be fine. Maybe p9_client_zc_rpc()
 needs a > barrier as well? Good point, the request is used without any other
 lock after the wait_event on req->status in trans_virtio.c;
 I'll send a separate patch for it later today. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1p3Qfb-00Ahee-9s
Subject: Re: [V9fs-developer] [PATCH] 9p/client: fix data race on req->status
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
Cc: v9fs-developer@lists.sourceforge.net,
 Naresh Kamboju <naresh.kamboju@linaro.org>, Marco Elver <elver@google.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Thu, Dec 08, 2022 at 04:51:27PM +0100:
> Right, looks like most of it should be fine. Maybe p9_client_zc_rpc() needs a
> barrier as well?

Good point, the request is used without any other lock after the
wait_event on req->status in trans_virtio.c;
I'll send a separate patch for it later today.


> > I think we're just protecting against compiler
> > reordering or if on some arch the store isn't actually atomic.
> 
> And access order within the same thread.

In this case afaik the barrier also does that? There would be no point
if a write barrier allowed a write placed before the barrier to be
reordered after it...

> > This code path actually was broken before I added the barrier a while
> > ago (2b6e72ed747f68a03), as I was observing some rare but very real
> > errors on a big server so I'm fairly confident that for at least x86_64
> > the generated code isn't too bad, but if KCSAN helps catching stuff I
> > won't complain.
> 
> What about p9_tag_alloc()?

I think that one's ok: it happens during the allocation before the
request is enqueued in the idr, so it should be race-free by defition.

tools/memory-model/Documentation/access-marking.txt says
"Initialization-time and cleanup-time accesses" should use plain
C-language accesses, so I stuck to that.

cheers,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
