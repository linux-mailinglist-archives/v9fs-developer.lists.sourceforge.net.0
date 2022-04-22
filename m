Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 560AA50B804
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Apr 2022 15:13:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nht6e-0001vn-A1; Fri, 22 Apr 2022 13:13:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nht6c-0001vh-6g
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Apr 2022 13:13:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=arZcP3kJHlJ8SEpr6WdbTpaE0DnsvTOiOitkCJZmFdY=; b=ayiWhIHmCbfNgrCfES0IwcvzLY
 fURuIkE2fUjl4WtVu7+iEEJljLurjEiAggIwSuOXl77U0bukAEO2yqEcd5kue15w51hRvoIcPKqjz
 3oICmfJJAykOm4uBNY3jgLwhFkk3ELFF//D/5aZ/YiKsztNzfnd5+CqFluk8bDCM1Q1E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=arZcP3kJHlJ8SEpr6WdbTpaE0DnsvTOiOitkCJZmFdY=; b=m98nvMmeLa+f4DhExxQw6mQLw9
 knP6lZrfhlsARnBBst/m2t/vk7sjV/MOQj90BopGDfmTPzluvPH/cZSoZQLX1ZyraqbTcTIxV6uHp
 mXWvS/Lv8lBUX056NZQnwIopwPSYlxFuGjX+X/ldYYfLlIVG0c7xaGCrWffLP+ClRZOg=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nht6X-006ZG1-A5
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Apr 2022 13:13:50 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id AD7BDC01E; Fri, 22 Apr 2022 15:13:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1650633218; bh=arZcP3kJHlJ8SEpr6WdbTpaE0DnsvTOiOitkCJZmFdY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nOdC2T5Dhqaut2J004hiQt31EBBwPVxp4oWg4Uo09BZPaGDl5pAvDUOHBeTPD4PaD
 ZiCWYJaQ6I3B6Jv0ZwE6JPtgwdtMZ0S265i0vpasipmMAF2trBzKDSQYmxfwhDGV5d
 /0ZKJvj7jKnjJMTGPAsGdcvS/7GsX0yZ2DuO3EfVDJNTnXqawzTzOOtcLvhYHSgJFC
 so7Z2+Y8TooRFvk/rHEFBlBweOH/Bvszu1Zs5CGl3vfNcfzstMDz82WFWOUSeddUbi
 uueLLONEzLBvrbEXS2Gatke6dbOwF4Y7t879vjSFa2j7mISxG8PU0eW3R7iMoLSaUd
 SlFVGxz/hzOBw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id CC236C009;
 Fri, 22 Apr 2022 15:13:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1650633218; bh=arZcP3kJHlJ8SEpr6WdbTpaE0DnsvTOiOitkCJZmFdY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nOdC2T5Dhqaut2J004hiQt31EBBwPVxp4oWg4Uo09BZPaGDl5pAvDUOHBeTPD4PaD
 ZiCWYJaQ6I3B6Jv0ZwE6JPtgwdtMZ0S265i0vpasipmMAF2trBzKDSQYmxfwhDGV5d
 /0ZKJvj7jKnjJMTGPAsGdcvS/7GsX0yZ2DuO3EfVDJNTnXqawzTzOOtcLvhYHSgJFC
 so7Z2+Y8TooRFvk/rHEFBlBweOH/Bvszu1Zs5CGl3vfNcfzstMDz82WFWOUSeddUbi
 uueLLONEzLBvrbEXS2Gatke6dbOwF4Y7t879vjSFa2j7mISxG8PU0eW3R7iMoLSaUd
 SlFVGxz/hzOBw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 9bea8e61;
 Fri, 22 Apr 2022 13:13:30 +0000 (UTC)
Date: Fri, 22 Apr 2022 22:13:15 +0900
From: asmadeus@codewreck.org
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YmKp68xvZEjBFell@codewreck.org>
References: <YlySEa6QGmIHlrdG@codewreck.org> <YlyFEuTY7tASl8aY@codewreck.org>
 <1050016.1650537372@warthog.procyon.org.uk>
 <1817268.LulUJvKFVv@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1817268.LulUJvKFVv@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Thu, Apr 21,
 2022 at 01:36:14PM
 +0200: > I hope this does not sound harsh, wouldn't it make sense to revert
 > eb497943fa215897f2f60fd28aa6fe52da27ca6c for now until thos [...] 
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
X-Headers-End: 1nht6X-006ZG1-A5
Subject: Re: [V9fs-developer] 9p EBADF with cache enabled (Was: 9p fs-cache
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
 Greg Kurz <groug@kaod.org>, David Howells <dhowells@redhat.com>,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Thu, Apr 21, 2022 at 01:36:14PM +0200:
> I hope this does not sound harsh, wouldn't it make sense to revert 
> eb497943fa215897f2f60fd28aa6fe52da27ca6c for now until those issues are sorted 
> out? My concern is that it might take a long time to address them, and these 
> are not minor issues.

I'm not sure that's possible at all, the related old fscache code has
been ripped out since and just reverting won't work.

I'm also curious why that behavior changed though, I don't think the
old code had any special handling of partially written pages either...
Understanding that might give a key to a small quick fix.


It is quite a bad bug though and really wish I could give it the
attention it deserves, early next month has a few holidays here
hopefully I'll be able to look at it closer then :/

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
